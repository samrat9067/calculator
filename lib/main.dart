import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Calculater());
}
class Calculater extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Calculater',
    theme: ThemeData(primarySwatch: Colors.blue),
     home:Myhomepage() ,
   );
  }

}
class Myhomepage extends StatefulWidget{
  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  TextEditingController no1Controller=TextEditingController();

  TextEditingController no2Controller=TextEditingController();

  var Result;

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(title: Text('Calculater'),),
     body: Container(
       width: double.infinity,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text('Calculater',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
           SizedBox(height: 18,),
           Container(
             width: 350,
             child: TextField(
               controller: no1Controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11)
                ),
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11)

                )

              ),
             ),
           ),
           SizedBox(height: 10,),
           Container(
             width: 350,
             child: TextField(
               controller: no2Controller,
               decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(11)
                   ),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(11)

                   )

               ),
             ),
           ),
           SizedBox(height: 30,),
           Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
               InkWell(

                 onTap: (){
                   int no1=int.parse(no1Controller.text.toString());
                   int no2=int.parse(no2Controller.text.toString());
                   int sum=no1+no2;
                   Result=sum;
                   print(Result);

                 },
                 child: Container(
                   height: 80,
                     width: 80,
                     decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(40)
                     ),
                     child: Center(child: Text('+',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w500),))),
               ),
               SizedBox(width: 20,),
               InkWell(
                 onTap: (){
                   num no1= int.parse(no1Controller.text.toString());
                   num no2=num.parse(no2Controller.text.toString());
                   num sub;
                   sub=no1-no2;
                   Result=sub;
                   print(Result);

                 },
                 child: Container(
                     height: 80,
                     width:80,
                     decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(40)
                     ),
                     child: Center(child: Text('-',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w500),))),
               ),
               SizedBox(width: 20,),
               InkWell(
                 onTap: (){
                   num no1=num.parse(no1Controller.text.toString());
                   num no2=num.parse(no2Controller.text.toString());
                   num mul=no1*no2;
                   Result=mul;
                   print(Result);

                 },
                 child: Container(
                     height: 80,
                     width: 80,
                     decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(40)
                     ),
                     child: Center(child: Text('*',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w500),))),
               ),
               SizedBox(width: 20,),
               InkWell(
                 onTap: (){
                   num no1=num.parse(no1Controller.text.toString());
                   num no2=num.parse(no2Controller.text.toString());
                   num div=no1/no2;
                   Result=div;

                   print(Result);
                   },
                 child: Container(
                     height: 80,
                     width: 80,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(40)
                     ),
                     child: Center(child: Text('/',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w500),))),
               ),
             ],
           ),


           SizedBox(height: 20,),
           Container(
               height:200,
               width: 200,
               child: Center(child: ElevatedButton(onPressed: (){
                 setState(() {

                 });

               }, child: Text('Result',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)))),


           Text('Your Result is $Result '),
         ],
       ),
     ),
   );
  }
}