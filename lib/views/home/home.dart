import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frontapp/controllers/home/homeController.dart';
import 'package:frontapp/utils/colors/colorsApp.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pathOfImages = ["assets/dente.png","assets/like.png","assets/brain.png",];
  ControllerHome controller = ControllerHome();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getPersonInfos();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context,constraints){
          return Stack(
            children: [
               Container(
                height: constraints.maxHeight,
                   width: constraints.maxWidth,
                color: ColorsApp.blueColor,
               child: Column(children: [
                 Container(
                   height: constraints.maxHeight * 0.10,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Padding(
                           padding: const EdgeInsets.all(14.0),
                           child: Image.asset("assets/menu.png",
                           height: 30,
                           width: 30,
                           ),
                         
                         ),
                          Row(children: [
                            Icon(Icons.notifications_none_outlined, color: Colors.white),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/woman.jpg",height: 40,
                                                       width: 40,),
                            )
                          ]),
                       ],),
                     ],
                   ),
                 )
               ],),
              ),
                Container(
                  color: Colors.transparent,
                     height: constraints.maxHeight,
                      width:  constraints.maxWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                      height: constraints.maxHeight * 0.88,
                      width:  constraints.maxWidth,
                      decoration: BoxDecoration(
                         color: ColorsApp.greyColor,
                        borderRadius: const BorderRadius.only(
                        topLeft:  Radius.circular(40.0),
                        topRight:  Radius.circular(40.0),
                      ),
                      ),
      
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                            child: Row(
                              children: [
                                Text("Hi, Olivia",style: TextStyle(
                                  fontSize: 26
                                ),),
                              ],
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                             child: Row(
                               children: [
                                 Text("Welcome Back",style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold
                          ),),
                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                               Material(
                                 borderRadius: BorderRadius.circular(8),
                                 elevation: 10,
                                 child: Container(
                                   width: constraints.maxWidth * 0.8,
                                   height: 40,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: TextField(
                                       
                                       decoration: InputDecoration(
                                         labelText: "Search",
                                         
                                         border: InputBorder.none),
                                     ),
                                   ),
                                 ),
                               ),
                               Material(
                                 borderRadius: BorderRadius.circular(8),
                                 elevation: 10,
                                 child: Container(
                                 
                                   width: 40,
                                   height: 40,
                                   decoration: BoxDecoration(
                                       color: ColorsApp.greenColor,
                                     borderRadius: BorderRadius.circular(8),
                                   ),
                                   child: Icon(Icons.search,color: Colors.white,)
                                 ),
                               )
                             ],),
                           ),
                            Padding(
                             padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                            Text("Category",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                            Text("Sell all",style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey
                            )),
                             ],),
                           ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                             height: 120,
      
                             
                             child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: 14,
                             itemBuilder: (context,counter){return
                               Padding(
                                 padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                 child: Container(
                                   width: 80,
                                  
                              
                                   child: Column(
                                    
                                     
                                     children: [
                                      Container(
                                        height: 120,
                                        width: 80,
                                        decoration: BoxDecoration(
                                           color: ColorsApp.greenColor,
                                          borderRadius: BorderRadius.circular(8)
                                        ),
                                       
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                      Image.asset(counter <= 2 ? pathOfImages[counter] : pathOfImages[2] ,
                                      height: 40,
                                      width: 40,
                                      ),
                                       Text("Dental",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              
                            )),
                                       Container(
                                         decoration: BoxDecoration(
                                         color: HexColor("#1d796c"),
                                         borderRadius: BorderRadius.circular(8)  
                                         ),
                                         
                                         child: Padding(
                                           padding: const EdgeInsets.all(4.0),
                                           child: Text("25 doctors",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 10
                              
                            )),
                                         ),
                                       )
                                          ],),
                                        ),
                                      ),
                                    
                                     ],
                                   ),
                                 ),
                               );}
                             ,),
                            ),
                            Padding(
                             padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                            Text("Top Rate",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                            Text("Sell all",style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey
                            )),
                             ],),
                           ),
                           Expanded(child: Observer(
                             builder:(context){return ListView.builder(
                                 itemCount: controller.gettingData  == false ? controller.infoPerson.length : 1 ,
                                 itemBuilder: (context,counter){
                                 return Observer(
                                   builder:(context){return controller.hasError == false ? controller.gettingData ? Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Container(height:100,
                                     child: Center(
                                       child: Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: CircularProgressIndicator(),
                                       ),
                                     ),),
                                   ) : Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: ListTile(
                                       leading: Image.network(controller.infoPerson[counter].url ),
                                       title: Text(controller.infoPerson[counter].name),
                                       subtitle: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text(controller.infoPerson[counter].name),
                                           Row(
                                             children: [
                                               Icon(Icons.star, color: Colors.amber,),
                                           Text("4.7"),
                                           SizedBox(width: 8,)
                                           ,Icon(Icons.map,color: Colors.amber),
                                           Text("3.1 km")
                                             ],
                                           ),
                                           
                                         ],
                                       ),
                                     ),
                                   ): Text("Ocorreu um erro");}
                                 ) ;
                               });},
                           ))
                        ],),
                      )
                      ,
                                ),
                    ],
                  ),
                ),
               
            ],
          );
        }),
      ),
    );
  }
}