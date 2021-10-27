import 'package:ecert/theme/theme_data.dart';
import 'package:flutter/material.dart';

class CardSetupWrapper extends StatelessWidget {
  const CardSetupWrapper({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                const Color(0x4B0B66BF),
                CustomTheme.lightColorScheme.primary,
              ],
              radius: 0.5,
            ),
          ),
        ),
        Align(
          child: SizedBox(
            width: 380,
            height: 520,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: child,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
