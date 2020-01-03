import 'package:flutter/material.dart';

class Card_Holder extends StatelessWidget{


Container MyFruits(String imageValue,String friutName){
  
  return Container(
                    width: 96.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(imageValue,width: 40,height: 40,),
                          ListTile(
                            title: Text(friutName),
                           // subtitle: Text(subHeading),
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
              height: 90,
              child: Wrap(
                runSpacing: 2.0,
                spacing: 4.0,
                direction: Axis.horizontal,
                children: <Widget>[
                 MyFruits('assets/fruits/image1.jpg', "Mango"),
                 MyFruits('assets/fruits/image2.jpg', "Apple"),
                 MyFruits('assets/fruits/image3.jpg', "Banana"),
                 MyFruits('assets/fruits/image4.jpg', "Strawberry"),
                 MyFruits('assets/fruits/image5.jpg', "Orange"),
                 MyFruits('assets/fruits/image6.jpg', "Watermelon"),
                ],
              ),
            ),

          

          ),
        );        
    
  }
}


