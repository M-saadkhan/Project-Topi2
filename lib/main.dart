import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Topicard(),
) );

class Topicard extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar:AppBar(
          title: Text('Project Topi App'),
          centerTitle: true,
          backgroundColor: Colors.grey[850]
      ),
      body:
          Stack(
              children:<Widget>[
                Container(
                  height: _size.height,
                  width:_size.width,
                 // color:Colors.yellow ,
             child:Stack(
               children:<Widget>[

                  Positioned(
                      top:0.0,
                    child: Container(
                       //  padding: EdgeInsets.all(100),
                     //    height:850.0,
                      //   width:850.0,
             // Padding(padding: EdgeInsets.fromLTRB( 10.0, 20.0, 30.0, 0.0),
                         margin: EdgeInsets.all(10),
                         decoration: BoxDecoration (
                             image: DecorationImage (
                               image: AssetImage('Assets/eagle1.png'),
                               fit: BoxFit.contain ,
                             )
                         )
                     ),
                  ) ,

                 Container(
                     child: Padding(padding: EdgeInsets.fromLTRB( 10.0, 20.0, 30.0, 0.0),
                         child:Column(
                           //crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Text(
                                   'User',
                                   style: TextStyle(
                                     color: Colors.grey,
                                     letterSpacing: 2.0,
                                     fontSize: 30.0,
                                   )
                               ),
                               Text(
                                   'Login!',
                                   style: TextStyle(
                                     color: Colors.grey,
                                     letterSpacing: 2.0,
                                     fontSize: 35.0,
                                     fontWeight: FontWeight.bold,
                                   )
                               )
                             ]
                         )
                     )

                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SizedBox(
                         height: 200.0,
                       ),
                       Container(
                           padding:EdgeInsets.all(10),

                           child: TextField(

                               decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: 'abc@gmail.com',
                                   fillColor:Colors.black12,
                                   filled:true,
                                   labelText: 'Email',
                                   labelStyle: TextStyle (
                                     fontSize: 20,
                                     color:Colors.white60 ,

                                   )
                               )
                           )
                       ),
                       Container(
                           padding:EdgeInsets.all(10),
                           child: TextField(
                               decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: 'abc13xyz89',
                                   fillColor:Colors.black12,
                                   filled:true,
                                   labelText: 'Password',
                                   labelStyle: TextStyle (
                                     fontSize: 20,
                                     color:Colors.white60 ,

                                   )
                               )
                           )
                       ),
                       Container(
                           child:FlatButton(
                             color: Colors.black54,
                             child: Text('Login'),
                             textColor:Colors.white60 ,
                             onPressed: (){},
                           )

                       ),
                       SizedBox(
                         height: 20.0,
                       ),
                       Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                           children: <Widget>[

                             Container(

                                 child: RaisedButton (
                                   shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(20.0) ),
                                   color:Colors.black45  ,
                                   child:Text('Facebook'),
                                   textColor:Colors.white60 ,
                                   padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 30.0),
                                   onPressed: (){},
                                 )
                             ),
                             Container(

                                 child: RaisedButton (
                                   shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(20.0) ),
                                   color:Colors.black45,
                                   child: Text('Gmail'),
                                   textColor: Colors.white60 ,
                                   padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 45.0),
                                   onPressed: (){},
                                 )

                             )


                           ]
                       )


                     ],

                   ),

             )

                    ]
                      )      ,
                ),
              ],

          ),

    );
  }
}



