import 'package:flutter/material.dart';
class Watertracker extends StatefulWidget {
  const Watertracker({super.key});

  @override
  State<Watertracker> createState() => _WatertrackerState();
}

class _WatertrackerState extends State<Watertracker> {
  @override
  Widget build(BuildContext context) {
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
                            bottom: 65,
                            left: 60,

                            child: Text("100%",style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),),
                          )
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
          )


        ],
      ),

    );
  }
}
