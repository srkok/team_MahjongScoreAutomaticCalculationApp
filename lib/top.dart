import 'package:flutter/material.dart';
import 'inputInformation.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "麻雀点数計算",
                style: TextStyle(fontSize: 30),
              ),
              Padding(padding: EdgeInsets.all(size.height*0.1)),
              Container(
                 width: size.width*0.8,
                 height: size.height*0.15,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => InputInformation(),
                      ),
              
                    );
                  },
                  child: Text("点数計算",style:TextStyle(fontSize: 20,color: Colors.black),),
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 244, 138, 0)), 
                ),
              ),
            ],
          ),
        ),

    );
  }
}