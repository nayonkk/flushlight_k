import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepages(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepages extends StatefulWidget {
  const Homepages({super.key});

  @override
  State<Homepages> createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  var isoN = false;
  var Controller = TorchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isoN?Color(0xFFAEEA00):Color(0xFF6D4C41),
        body: Column(
         
          children: [
            Container(  
              child: Transform.scale(
                scale: 0.9,
                child: CircleAvatar( 
                    backgroundImage: AssetImage( isoN?'assets/images/lightoff.jpg': 'assets/images/bulp.jpg',),
                    child: Transform.scale(
                      scale: 3,
                      child: IconButton(
                          onPressed: () {
                            Controller.toggle();
                            isoN = !isoN;
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.sunny,color: Colors.transparent,
                           
                           
                          )
                          ),
                    )),
              ),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            
            ),
            
          ],
        ));
  }
}
