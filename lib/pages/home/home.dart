import 'package:flutter/material.dart';
import 'package:super_animations/pages/home/avatar_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        title: Text("Instagram",style: TextStyle(color: Colors.black),),
        actions:const  [
          
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
                
            children: [
              
              Icon(Icons.favorite_border),
              Padding(padding:  EdgeInsets.all(8)),
              Icon(Icons.message_outlined),
            ],
                  ),
          )],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const StoryListWidget(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    
                    height: 400,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(radius: 20,
                                        backgroundImage: NetworkImage(
                                          "http://source.unsplash.com/random/${(index + 3)*1}",
                                        ),
                                        ),
                                        
                                         Padding(
                                           padding: const EdgeInsets.only(left: 8.0),
                                           child: Text("vaxob_boy_",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                         ),
                                         SizedBox(width: 150,),
                                         Icon(Icons.more_horiz_rounded),
                            ],
                          ),
                        ),
                       
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),
                            child: Image.network(
                              "http://source.unsplash.com/random/${(index + 5) * 100}",
                              fit: BoxFit.cover,
                              width: double.maxFinite,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.favorite_outline_rounded),
                                  SizedBox(width: 3,),
                                  Icon(Icons.message),
                                  SizedBox(width: 3,),
                                  Icon(Icons.send),
                                  SizedBox(width: 170,),
                                  Icon(Icons.add_box_outlined)
                                  ],
                              ),
                              
                              Column(
                  
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right:171),
                                    child: Text(
                                      "Нравится: 127.987",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                 
                                      Padding(
                                        padding: EdgeInsets.only(right:50),
                                        child: Text(
                                          "𝐯𝐚𝐱𝐨𝐛_𝐛𝐨𝐲_  It's so amazing thing which was with incredible advantures and that reason i'm so happy today \n 4 hours later",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      
                                   
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
