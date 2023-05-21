import 'package:campusconnect/app/components/img.dart';
import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/pages/home/controller/home.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ChatMiniTab extends GetView<MainHomeController> {
  const ChatMiniTab({super.key});

  @override
  Widget build(BuildContext context) {
    //  Provider.of<ScrollProvider2>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    controller.initState(context);

    return SingleChildScrollView(
         controller: controller.scrollController,
        child: Column(
      children: controller.imageCommunity
          .map((e) => ChatInitialTile(themeProvider: themeProvider,url: e,))
          .toList(), 
    ));
  }
}

class ChatInitialTile extends GetView<MainHomeController> {
  const ChatInitialTile({
    super.key,
    required this.themeProvider,
    required this.url
  });

  final ThemeProvider themeProvider;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 1.5,
          color: themeProvider.getDividerColor,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
               NetworkImgWidget(url: url),
               const SizedBox(
                width: 10,
               ),
               TextWidget(
                  color: themeProvider.getPrimaryColor,
                  size: 10,
                  text: "Community",
                  weight: FontWeight.w500),
            ],
          ),
        ),
      ],
    );
  }
}
