import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class Home extends StatefulWidget  {
  @override
  _HomeState createState() => _HomeState();
 
}

class _HomeState extends State<Home> {

   Widget buttonBuilder(String text,int r, int g, int b){

    return Padding(
      padding: const EdgeInsets.fromLTRB(7.0,7,20,7),
      child: Container(
        
        width: 60,
          height: 60,
        child: Neumorphic(
       // onPressed: (){},
          child: Center(
            child: Text(text,
            style: TextStyle(
              fontSize: 28.0,
              color: Color.fromRGBO(r,g,b,1), 
            ),),
          ),
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.circle(),
             color: Colors.white,
            shape: NeumorphicShape.concave,
            depth: 5,
            intensity: 0.8,
           
            
          ),
        ),
            
        

      ),
    );
  }

  @override
  Widget build(BuildContext context) {

   

   
      return Scaffold(
        
          body: Column(
            children:<Widget> [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, // switch slide for changing theme
                  children: [
                    Switch(value: true,onChanged: (state){
                      setState(() {
                        Navigator.pushReplacementNamed(context, '/darkHome');
                      });
                    },),
                  ],
                ),
              ),
          
              Center(
                  child: Container(
                    height: 550,
                    width: 370,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: 340,
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  color: Colors.white,
                                  intensity: 1.5,
                                  depth: -5,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(200, 20, 10, 0),
                                      child: Text(
                                        "62 + 65",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(240, 10, 10, 0),
                                      child: Text(
                                        "134",
                                        style: TextStyle(
                                          fontSize: 24,
                                          
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(77, 18, 245,1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children:<Widget> [
                                Column(
                                  children: <Widget> [
                                buttonBuilder('AC',77, 18, 245),
                                buttonBuilder('7',28,28,28),
                                buttonBuilder('4',28,28,28),
                                buttonBuilder('1',28,28,28),
                                buttonBuilder('%',28,28,28),

                                  ]
                                ),

                                 Column(
                                  children: <Widget> [
                                 buttonBuilder('/',77, 18, 245),
                                 buttonBuilder('8',28,28,28),
                                 buttonBuilder('6',28,28,28),
                                 buttonBuilder('2',28,28,28),
                                 buttonBuilder('0',28,28,28),

                                  ]
                                ),
                          
                                 Column(
                                  children: <Widget> [
                                 buttonBuilder('x',77, 18, 245),
                                 buttonBuilder('9',28,28,28),
                                 buttonBuilder('6',28,28,28),
                                 buttonBuilder('3',28,28,28),
                                 buttonBuilder(',',28,28,28),

                                  ]
                                ),

                                 Column(
                                  children: <Widget> [
                                buttonBuilder('⌫',77, 18, 245),
                                buttonBuilder('−',77, 18, 245),
                                buttonBuilder('+',77, 18, 245),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(7.0,7,20,7),
                                  child: Container(
                                    width: 70,
                                    height: 131,
                                  
                                    child: Neumorphic(

                                      child: Center(
                                        child: Text('=',
                                        style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.white,

                                        ),),
                                      ),
                                      
                                        style: NeumorphicStyle(
                                          depth: 6,
                                          color: Color.fromRGBO(77, 18, 245,1),
                                          shape: NeumorphicShape.concave,
                                          intensity: 3,
                                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(42)),
                                          
                                        ),
                                    ),
                                  ),
                                )

                                  ]
                                ),

                               
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  
                ),
              
            ],
          ),
        

       
 

      
    );
  }
}