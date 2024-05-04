import 'package:flutter/material.dart';
import 'package:measure_size_implementation/src/style/app_color.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  const ResponsiveLayoutBuilder(this.context, this.child, {super.key});

  final BuildContext context;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Stack(
            children: [
              Container(
                color: AppColor.black,
              ),
              Center(
                child: Container(
                  width: 375,
                  height: 812,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColor.newBlack,
                        spreadRadius: 2,
                        blurRadius: 10,
                      ),
                    ],
                    border: Border.all(
                      color: AppColor.newBlack,
                      width: 2,
                    ),
                  ),
                  child: child,
                ),
              ),
            ],
          );
        } else {
          return child!;
        }
      },
    );
  }
}
