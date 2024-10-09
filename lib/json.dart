import 'dart:convert'; // 用于处理 JSON 数据
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // 用于复制功能

class JsonFormatterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Formatter',
      home: JsonFormatterPage(),
    );
  }
}

class JsonFormatterPage extends StatefulWidget {
  @override
  _JsonFormatterPageState createState() => _JsonFormatterPageState();
}

class _JsonFormatterPageState extends State<JsonFormatterPage> {
  final TextEditingController _inputController = TextEditingController();
  String? _formattedJson;

  void _formatJson() {
    try {
      String inputText = _inputController.text;

      if (inputText.startsWith('{') && inputText.endsWith('}')) {
        String jsonLikeString = _convertMapStringToJson(inputText);
        final jsonData = jsonDecode(jsonLikeString);
        final formattedJsonStr = const JsonEncoder.withIndent('  ').convert(jsonData);
        setState(() {
          _formattedJson = formattedJsonStr;
        });
      } else {
        final jsonData = jsonDecode(inputText);
        final formattedJsonStr = const JsonEncoder.withIndent('  ').convert(jsonData);
        setState(() {
          _formattedJson = formattedJsonStr;
        });
      }
    } catch (e) {
      setState(() {
        _formattedJson = 'Invalid JSON or Map-like input: ${e.toString()}';
      });
    }
  }

  String _convertMapStringToJson(String mapString) {
    mapString = mapString.trim();
    mapString = mapString.substring(1, mapString.length - 1); // 去掉两边的花括号
    mapString = mapString.replaceAllMapped(RegExp(r'(\w+)\s*:\s*([^,]+)'), (match) {
      String key = match[1]?.trim()??'';
      String? value = match[2]?.trim();

      // 为 key 添加双引号
      key = '"$key"';

      // 处理 value
      if(value == null){
        value = null;
      }else if (value == 'null') {
        // 保持 null 形式
        value = 'null';
      } else if (value.isEmpty) {
        // 保留空字符串的双引号
        value = '""';
      } else if (value.startsWith("'") && value.endsWith("'")) {
        // 单引号处理为双引号
        value = '"${value.substring(1, value.length - 1)}"';
      } else if (value.startsWith('"') && value.endsWith('"')) {
        // 双引号的字符串保持原样
      } else if (RegExp(r'^-?\d+(\.\d+)?$').hasMatch(value)) {
        // 如果 value 是数字且没有引号，则保持数字形式
      } else {
        // 其他情况视为字符串，添加双引号
        value = '"$value"';
      }

      return '$key: $value';
    });
    return '{$mapString}';
  }

  void _copyToClipboard() {
    if (_formattedJson != null) {
      Clipboard.setData(ClipboardData(text: _formattedJson!));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Copied to clipboard')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON Formatter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 输入框
            TextField(
              controller: _inputController,
              maxLines: 10,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Input JSON or Map-like String',
              ),
            ),
            const SizedBox(height: 16),
            // 格式化按钮
            ElevatedButton(
              onPressed: _formatJson,
              child: const Text('JSON格式化'),
            ),
            const SizedBox(height: 16),
            // 显示格式化后的 JSON
            if (_formattedJson != null) ...[
              Expanded(
                child: SingleChildScrollView(
                  child: SelectableText(
                    _formattedJson!,
                    style: const TextStyle(fontFamily: 'monospace'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _copyToClipboard,
                child: const Text('Copy to Clipboard'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(JsonFormatterApp());
}