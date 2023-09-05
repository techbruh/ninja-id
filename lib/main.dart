import 'package:flutter/material.dart';

void main () => runApp (const MaterialApp (
    home: NinjaCard () ,
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key }) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID card'),
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: Visibility(
        visible: ninjaLevel != 500,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              if(ninjaLevel < 500){
                ninjaLevel += 100;
              }
            });
          },
          backgroundColor: Colors.grey[800],
          child: const Icon(
              Icons.add
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image-ninja.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            const Text(
                'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10 ),
            Text(
              'DAVID MARSHAL',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30 ),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10 ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30 ),
            Row(
              children: [
                Icon(
                    Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10,),
                Text(
                    'marshal.david@lmu.edu.ng',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
