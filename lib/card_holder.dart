import 'package:flutter/material.dart';

class Card_Holder extends StatelessWidget{


Container MyFruits(String imageValue,String friutName,String subHeading){
  
  return Container(
                    width: 150.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(imageValue,width: 80,height: 80,),
                          ListTile(
                            title: Text(friutName),
                            subtitle: Text(subHeading),
                          )
                        ],
                      ),
                    ),
                  );
}

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.pink
      ),
        home: Scaffold(
         
            body: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                 MyFruits('assets/fruits/image1.jpg', "Mango","SubHeading1"),
                 MyFruits('assets/fruits/image2.jpg', "Apple","SubHeading2"),
                 MyFruits('assets/fruits/image3.jpg', "Banana","SubHeading3"),
                 MyFruits('assets/fruits/image4.jpg', "Strawberry","SubHeading4"),
                 MyFruits('assets/fruits/image5.jpg', "Orange","SubHeading5"),
                 MyFruits('assets/fruits/image6.jpg', "Watermelon","SubHeading6"),
                ],
              )
            ),

          

          ),
        );        
    
  }
}


