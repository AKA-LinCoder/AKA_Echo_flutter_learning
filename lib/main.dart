import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: ''),
       
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi ,Jared!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text("23 Jan 2024",
                            style: TextStyle(color: Colors.blue[200]))
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.notifications, color: Colors.white))
                  ]),
                  //search bar
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // how do you feel
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white)
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      EmoticonFace(face: "😠",desc: "生气",),
                      EmoticonFace(face: "😄",desc: "高兴",),
                      EmoticonFace(face: "😢",desc: "沮丧",),
                      EmoticonFace(face: "😊",desc: "小确幸",),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                child:  Center(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Exercises",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTile(icon: Icons.favorite,title: "Speaking Skills",numberOfExercises: "15",color: Colors.orange,),
                            ExerciseTile(icon: Icons.favorite,title: "Reading Skills",numberOfExercises: "35",color: Colors.indigoAccent,),
                            ExerciseTile(icon: Icons.favorite,title: "Writing Skills",numberOfExercises: "24",color: Colors.green,),
                          ]
                        ),
                      )

                    ],
                  ),
                ),
                // child: ,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EmoticonFace extends StatelessWidget {
  final String face;
  final String desc;
  const EmoticonFace({super.key, required this.face, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          padding: const EdgeInsets.all(16),
          child: Center(child: Text(face,style: const TextStyle(fontSize: 28),)),
        ),
        const SizedBox(height: 8,),
        Text(desc,style: const TextStyle(fontSize: 16,color: Colors.white),)
      ],
    );
  }
}


class ExerciseTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String numberOfExercises;
  final Color color;
  const ExerciseTile({super.key, required this.icon, required this.title, required this.numberOfExercises, required this.color});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                          padding: const EdgeInsets.all(16),
                          color: color,
                          child:  Icon(icon,color: Colors.white,)),
                    ),
                    const SizedBox(width: 12,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                        const SizedBox(height: 5,),
                        Text("${numberOfExercises} Exercises",style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                  ]
              ),
              const Icon(Icons.more_horiz)
            ],
          )
      ),
    );
  }
}

