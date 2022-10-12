import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidTransition extends StatefulWidget {
  const LiquidTransition({super.key});

  @override
  State<LiquidTransition> createState() => _LiquidTransitionState();
}

class _LiquidTransitionState extends State<LiquidTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: LiquidSwipe(
        enableSideReveal: false,
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.9,
        slideIconWidget: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: 30,
          width: 40,
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 28,
          ),
        ),
        pages: [
          Container(
              decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3BpZGVybWFufGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover,
            ),
          )),
          Container(
              decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1534809027769-b00d750a6bac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3BpZGVybWFufGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover,
            ),
          )),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1604200213928-ba3cf4fc8436?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3BpZGVybWFufGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmF0bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
