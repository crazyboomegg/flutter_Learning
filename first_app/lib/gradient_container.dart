import 'package:flutter/material.dart';

import 'package:first_app/dice_roller.dart';

const starAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2, {super.key});

   const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: starAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradinetContainer extends StatelessWidget {
//   const GradinetContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
    
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors:  colors,
//           begin: starAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello'),
//       ),
//     );
//   }
// }
