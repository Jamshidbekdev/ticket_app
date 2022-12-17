import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LineSpaceWidget extends StatelessWidget {
  const LineSpaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(15),
        SizedBox(
            height: 20,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              // print("This is constraints ${constraints.maxWidth}");
              return Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: List.generate(
                    (constraints.constrainWidth() / 12).floor(),
                    (index) => SizedBox(
                          width: 3,
                          height: 1,
                          child: DecoratedBox(
                              decoration:
                                  BoxDecoration(color: Colors.blue[700])),
                        )),
              );
            })),
        const Gap(15),
      ],
    );
  }
}
