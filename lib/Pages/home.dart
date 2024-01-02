import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MSR Portfolio', style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),),
        backgroundColor: Colors.black,
      ),
      drawer: const Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Text("Welcome ", style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            TextField(
              cursorColor: Colors.blue,

            )
          ],
        ),
      ),
      body:
      Center(

    //   child: Container(
    //   decoration: BoxDecoration(
    // gradient: LinearGradient(
    // begin: Alignment.topRight,
    //   end: Alignment.bottomLeft,
    //   colors: [
    //     Colors.blue,
    //     Colors.red,
    //   ],
    // )
    // ),
      child: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [
    0.1,
    0.4,
    0.6,
    0.9,
    ],
    colors: [
    Colors.yellow,
    Colors.red,
    Colors.indigo,
    Colors.teal,
    ],
    )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center ,
          children:
          [
            Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center ,
        children: [
          const Text("Hi! I'm Ramachandramoorthi",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),
          const Row(
            children: [],
          ),
          const SizedBox(width: 200,),
          const Text('RA2332241010149 \n'
              '        I MCA C ',
          style: TextStyle(
            color: Colors.white70
          ),),
          const SizedBox(height: 20,),
          TextButton(
            onPressed: (){
            print('Hello World');
            Navigator.pushNamed(context, '/about_MSR');
          },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white)
            ),
            child: Text("About Me",style: TextStyle(
              color: Colors.black,
            ),),
          )],
            ),
            const SizedBox(width: 200,),
            Hero(
              tag: 'photo of mine',
              child: Container(
                      height: 500,
                      width: 250,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                image: AssetImage("assets/IMG.jpg")),
                        boxShadow: [
              BoxShadow(
                color: Colors.orangeAccent,
                offset: Offset(0, 0),
                blurRadius: 50,
                spreadRadius: 50
              )
                        ]
                      ),
              ),
            )
          ],
            ),
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton: Container(
      height: 50,
        width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
          boxShadow: [
          BoxShadow(
          color: Colors.black,
          offset: Offset(-5, 5),
          blurRadius: 10,
          spreadRadius: 10
      )
      ]),
      child: Center(
        child: Row(
          children: [
            InkWell(
              onTap:  () async
              {
                await launchUrl(Uri.parse('https://github.com/MRAMACHANDRAMOORTHI'));
              },
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset('assets/github.png'),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child:Image.asset('assets/email.png'),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset('assets/instagram.png'),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset('assets/linkedin.png'),
            ),
          ],
        ),
      ),
    ),



    );}
}
