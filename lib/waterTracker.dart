import 'dart:math';

import 'package:flutter/material.dart';
class Watertracker extends StatefulWidget {
  const Watertracker({super.key});

  @override
  State<Watertracker> createState() => _WatertrackerState();
}

class _WatertrackerState extends State<Watertracker> {
  int currentInTake = 0;
  final int goal = 5000;
  void waterAdd (int amount){
    setState(() {
      currentInTake = (currentInTake + amount).clamp(0, goal);
    });
  }
  void resetTank(){
    setState(() {
      currentInTake=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    double progress = (currentInTake/goal).clamp(0, 1);
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://i.pinimg.com/474x/a4/83/aa/a483aab604cb2f0dd08ed6f5039415e8.jpg"
                              ),
                            ),
                            Positioned(
                              bottom: 1,
                              right: 1,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white,
                                    )
                                ),
                              ),
                            )

                          ],

                        ),
                        SizedBox(width: 10),
                        Container(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Mr Cat",style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 17,
                              ),),
                              Text("Good morning 👋",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),)
                            ],
                          ),
                        ),
                      ],

                    ),
                    Icon(Icons.notifications_active_outlined,size: 30, color: Color(0xff25A8CF),),

                  ],
                ),
              )
            ],

          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: Colors.white,

              ),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,


                      child: Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color:Color(0xffBCEAF8),
                          borderRadius: BorderRadius.circular(10),
                            boxShadow:[
                              BoxShadow(
                                color: Color(0xffBCEAF8),
                                blurRadius: 7,
                                spreadRadius: 1,
                              )
                            ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 0,
                      child: Stack(
                        children: [
                      Container(

                      height: 190,
                      width: 190,
                      child: Image.asset("asset/waterdrop.png"),
                       ),
                          Positioned(
                            bottom: 100,
                            left: 70,
                            child: Column(
                              children: [
                                Container(
                                  child:  Text("Now",style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,

                                  ),),
                                ),

                              ],
                            ),


                          ),
                          Positioned(
                            bottom: 65,
                            left: 60,
                            child: Column(
                              children: [
                                Container(
                                  child: Text("${(progress*100).toInt()}%",style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),),


                                )

                              ],
                            ),


                          ),
                      ]

                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 0,
                      child: Container(
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(10),
                                 ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Text("WATER",style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  color: Color(0xff3FA0BB),
                                ),),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Text("TRACKER",style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  color: Color(0xff5BBFD9),
                                ),),
                              )




                            ],
                          ),
                        ),

                          ),
                    )


                  ],
                ),
              ),



            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 250,
            child: Divider(
              thickness: 2,

              color:Color(0xff25A8CF),
            ),
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,

                          child: Container(
                            height: 150,
                            width: 260,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          child: Stack(
                            alignment: Alignment.center,
                            children:[
                              Container(
                                height: 150,
                                width: 150,
                                child: Image.asset("asset/watertank.png"),
                              ),
                              Container(
                                child: Text("${currentInTake} LTR",style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),)
                              )

                               ]

                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            height: 150,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Your water tank capacity is 5000L, and it currently contains ${currentInTake}L of water.",style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                    color:Color(0xff25A8CF),
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 70,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xff3FA0BB),
                                        foregroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      onPressed: ()=>resetTank(),
                                      child: const Text(
                                        "Sell",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ),


                              ]

                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                ),
              )

             
            ],
          ),
          Column(
            children: [
              SizedBox(height: 10,),
              Text("Current Water Levels", style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                color: Color(0xff3FA0BB),

              ),),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 160,
                      width: 160,
                        child:
                        Image.asset("asset/indicator.png"),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                    Container(

                      height: 110,
                      width: 110,
                      child: CircularProgressIndicator(
                      backgroundColor: Colors.grey.withOpacity(0.2),
                        color: Color(0xff3FA0BB),
                         strokeWidth: 30,
                        value: progress,
                      ),
                    ),
                        Text("${(progress*100).toInt()}%",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff5BBFD9),
                        ),)
                    ]

                    )


                  ],
                ),
              )

            ],
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 250,
            child: Divider(
              thickness: 2,

              color:Color(0xff25A8CF),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3FA0BB),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: ()=> waterAdd(100),
                        child: const Text(
                          "100 LTR",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3FA0BB),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: ()=> waterAdd(200),
                        child: const Text(
                          "200 LTR",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3FA0BB),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: ()=> waterAdd(300),
                        child: const Text(
                          "300 LTR",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3FA0BB),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: ()=> waterAdd(500),
                        child: const Text(
                          "500 LTR",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )





        ],
      ),

    );
  }
}
