import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/widgets/app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      // body: PageView.builder(
      //   controller: controller,
      //   scrollDirection: Axis.vertical,
      //   itemCount: 4,
      //   itemBuilder: (context, index) {
      //     return PageViewp(
      //       onPressDown: (){
      //         controller.nextPage(
      //             duration: Duration(milliseconds: 400),
      //             curve: Curves.easeInOutCubic);
      //       },
      //       child: Container(
      //         height: MediaQuery.sizeOf(context).height,
      //         width: double.infinity,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             ElevatedButton(
      //               onPressed: () => controller.previousPage(
      //                   duration: Duration(milliseconds: 400),
      //                   curve: Curves.easeInOutCubic),
      //               child: Text('Previous'),
      //             ),
      //             ElevatedButton(
      //               onPressed: () => controller.nextPage(
      //                   duration: Duration(milliseconds: 400),
      //                   curve: Curves.easeInOutCubic),
      //               child: Text('Next',),
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
