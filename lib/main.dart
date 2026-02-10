import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColorLight: Colors.red,
      ),
      home: MyCard(),
    );
  }
}
class MyCard extends StatelessWidget {
  const MyCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY APP',
          style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white,
          ),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body:
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.white, Colors.red]
            ),),
          child: Padding(padding: EdgeInsets.all(30)
         , child: Row(
           children: [
             Card(
                    color: Colors.white,
                    elevation: 15,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),

                  child: Column(
                    children: [
                      SizedBox(height: 30, width: 30,),
                      RichText(
                      textAlign: TextAlign.center, text: TextSpan(
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),

                    children: [
                      TextSpan( text: 'This is My Novel\n' ),
                      TextSpan(text: 'IshqTara',
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 35,color: Colors.red),

                    ), ],)
                      ),SizedBox(height: 25, width: 30,),

                    //SizedBox(height: 30, width: 30,),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image(image: AssetImage('assets/ab.jpg'),),
                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),backgroundColor: Colors.red,
                                ),
                                child: Text('Link',style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
                                ),
                            ),
                          ),Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),backgroundColor: Colors.red,
                              ),
                              child: Text('Listening',style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
                              ),
                            ),
                          )


                        ],
                      )
                    ]
                  ),
                  ),

           ],
         ),

            ), ));
  }
}