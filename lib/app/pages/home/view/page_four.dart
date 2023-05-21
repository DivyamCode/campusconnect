import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DivPageFour extends StatelessWidget {
  const DivPageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // const SizedBox(height: 20,),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/avatar.png",
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              color: themeProvider.getDPrimary.withOpacity(0.7),
                              size: 17,
                              text: "Divyam verma",
                              weight: FontWeight.w500),
                          TextWidget(
                              color: themeProvider.getDPrimary.withOpacity(0.7),
                              size: 15,
                              text: "Divyamverma@gmail.com",
                              weight: FontWeight.w400),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: themeProvider.getDividerColor,
                  ),
                  tiles(
                      themeProvider,
                      label: "label",
                      () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 23,
                        color: themeProvider.getNavBarGreen.withOpacity(0.8),
                      )),
                  Divider(
                    thickness: 1.5,
                    color: themeProvider.getDividerColor,
                  ),
                  tiles(
                      themeProvider,
                      label: "label",
                      () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 23,
                        color: themeProvider.getNavBarGreen.withOpacity(0.8),
                      )),
                  Divider(
                    thickness: 1.5,
                    color: themeProvider.getDividerColor,
                  ),
                  tiles(
                      themeProvider,
                      label: "Notification",
                      () {},
                      icon: Icon(
                        Icons.notifications_active_outlined,
                        size: 23,
                        color: themeProvider.getNavBarGreen.withOpacity(0.8),
                      )),
                  Divider(
                    thickness: 1.5,
                    color: themeProvider.getDividerColor,
                  ),
                  tiles(
                      themeProvider,
                      label: "About",
                      () {},
                      icon: Icon(
                        Icons.info_outline_rounded,
                        size: 23,
                        color: themeProvider.getNavBarGreen.withOpacity(0.8),
                      )),
                  Divider(
                    thickness: 1.5,
                    color: themeProvider.getDividerColor,
                  ),
                  tiles(
                      themeProvider,
                      label: "Help",
                      () {},
                      icon: Icon(
                        Icons.help_outline_outlined,
                        size: 23,
                        color: themeProvider.getNavBarGreen.withOpacity(0.8),
                      )),
                  Divider(
                    thickness: 1.5,
                    color: themeProvider.getDividerColor,
                  ),
                  tiles(
                      themeProvider,
                      label: "Exit",
                      () {},
                      icon: Icon(
                        Icons.exit_to_app_outlined,
                        size: 23,
                        color: themeProvider.getNavBarGreen.withOpacity(0.8),
                      )),
                  Divider(
                    thickness: 1.5,
                    color: themeProvider.getDividerColor,
                  ),
                ],
              ),
              logoutButton(themeProvider)
            ],
          ),
        ),
      ),
    );
  }

  Ink logoutButton(ThemeProvider themeProvider) {
    return Ink(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: themeProvider.getButtonColor2,
              border: Border.all(
                  color: themeProvider.getNavBarGreen.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.logout_outlined,
                size: 30,
                color: themeProvider.getNavBarGreen,
              ),
              const SizedBox(
                width: 1,
              ),
              TextWidget(
                  color: themeProvider.getNavBarGreen,
                  size: 18,
                  text: "Logout",
                  weight: FontWeight.w100),
              const SizedBox(
                width: 1,
              ),
              const SizedBox(
                width: 1,
              )
            ],
          ),
        ),
      ),
    );
  }

  Ink tiles(ThemeProvider themeProvider, Function onTap,
      {required String label, required Widget icon}) {
    return Ink(
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon,
                  const SizedBox(
                    width: 20,
                  ),
                  TextWidget(
                      color: themeProvider.getDPrimary,
                      size: 16,
                      text: label,
                      weight: FontWeight.w300)
                ],
              ),
             Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 23,
                        color: themeProvider.getNavBarGreen.withOpacity(0.8),
                      )
            ],
          ),
        ),
      ),
    );
  }
}
