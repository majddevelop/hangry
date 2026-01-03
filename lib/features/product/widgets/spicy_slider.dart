import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';


class SpicySlider extends StatefulWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged, required this.img});
  final double value;
  final ValueChanged<double> onChanged;
  final String img;

  @override
  State<SpicySlider> createState() => _SpicySliderState();
}

class _SpicySliderState extends State<SpicySlider> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(widget.img),
        ),

        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 40.0),
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 3),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 10),
              trackHeight: 3,
            ),

            child: Slider(
              min: 0,
              max: 1,
              value: widget.value,
              onChanged: widget.onChanged,
              inactiveColor: Colors.grey.shade900.withOpacity(0.2),
              activeColor: AppColors.primary.withOpacity(0.7),
            ),
          ),
        ),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 53),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: 'Cold 🥶', weight:  FontWeight.bold,size: 12,),
              Gap(100),
              CustomText(text: '🌶️ Hot', weight: FontWeight.bold, size: 12,),
            ],
          ),
        ),


      ],
    );
  }
}



















// class SpicySlider extends StatefulWidget {
//   const SpicySlider({super.key, required this.value, required this.onChanged});
//   final double value;
//   final ValueChanged<double> onChanged;
//
//   @override
//   State<SpicySlider> createState() => _SpicySliderState();
// }
//
// class _SpicySliderState extends State<SpicySlider> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // الصورة تأخذ جزء من الشاشة فقط
//         Expanded(
//           flex: 1,
//           child: Image.asset(
//             'assets/detail/sandwitch_detail.png',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//         ),
//
//         Gap(10),
//
//         // النص والسلايدر يأخذون الجزء المتبقي
//         Expanded(
//           flex: 1,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CustomText(
//                 text:
//                 'Customize Your Burger\nto Your Tastes.\nUltimate Experience',
//               ),
//
//               Slider(
//                 min: 0,
//                 max: 1,
//                 value: widget.value,
//                 onChanged: widget.onChanged,
//                 inactiveColor: Colors.grey.shade300,
//                 activeColor: AppColors.primary,
//               ),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: const [
//                   Text('🥶'),
//                   Text('🌶️'),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
