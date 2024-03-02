import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/themes/colors.dart';
import 'package:my_personal_portfolio/themes/texts_styles.dart';
import 'package:my_personal_portfolio/utils/responsive.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // SizedBox(
          //   width: MediaQuery.sizeOf(context).width * 0.06,
          // ),
          Expanded(
            child: FittedBox(
              alignment: Alignment.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text(
                'Shahad H.',
                style: appBarTabsStyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 32, height: 1.1),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          if (Responsive.isLargeMobile(context))
           PopupMenuButton(
             icon: const Icon(Icons.menu,color: shade100,),
               color: backgroundColor,
               itemBuilder: (context){
             return [
               const PopupMenuItem(child: Text(
                 'Home',
                 style: appBarTabsStyle,
                 textAlign: TextAlign.end,
               ),),
               const PopupMenuItem(child: Text('About', style: appBarTabsStyle)),
               const PopupMenuItem(child: Text('Resume', style: appBarTabsStyle)),
               const PopupMenuItem(child: Text('Contact me', style: appBarTabsStyle)),

             ];
           })
          else
            Row(
              children: [
                const Text(
                  'Home',
                  style: appBarTabsStyle,
                  textAlign: TextAlign.end,
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                const Text(
                  'Projects',
                  style: appBarTabsStyle,
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                const Text('About', style: appBarTabsStyle),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                const Text('Resume', style: appBarTabsStyle),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                const Text('Contact me', style: appBarTabsStyle),
              ],
            ),
          // SizedBox(
          //   width: MediaQuery.sizeOf(context).width * 0.06,
          // ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}

