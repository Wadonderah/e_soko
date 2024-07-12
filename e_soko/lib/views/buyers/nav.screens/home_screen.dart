// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20, left: 20, right: 20),
      child: Column(
        children: [
          WelcomeText(),
          SizedBox(height: 6,),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: "Search for products, brands and more",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
            
                ),
              ),
            ),
          ),
        ],
      ),

    
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [
      Text("Hello , What are you\n looking for  👀 ",
      style:TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        ),),
    
        Container(
          child: Image.asset(
            "assets/images/hero.png",
          ),
        )
    ],);
  }
}