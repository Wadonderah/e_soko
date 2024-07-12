import 'package:flutter/widgets.dart';

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