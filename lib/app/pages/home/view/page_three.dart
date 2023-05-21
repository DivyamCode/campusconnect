import 'dart:async';
import 'package:campusconnect/app/components/bar.dart';
import 'package:campusconnect/app/pages/home/widget/grid.dart';
import 'package:campusconnect/app/provider/refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';


class DivPageThree extends StatefulWidget {
  const DivPageThree({Key? key}) : super(key: key);

  @override
  State<DivPageThree> createState() => _DivPageThreeState();
}

class _DivPageThreeState extends State<DivPageThree> {
  late final PageController pageController;
  final ScrollController _scrollController = ScrollController();
  int pageNo = 0;

  Timer? carasouelTmer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 4) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    });
  }

  @override
  void initState() {
    final scrollProvider = Provider.of<ScrollProvider>(context,listen: false);
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carasouelTmer = getTimer();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
            scrollProvider.change(false);
        // showBtmAppBr = false;
        // setState(() {});
      } else {
        scrollProvider.change(true);
        // showBtmAppBr = true;

        // setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  // bool showBtmAppBr = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            padding:const EdgeInsets.only(left:17,right:17,top: 15),
            child: Column(
              children: [
                const WelcomeBar(),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (index) {
                      pageNo = index;
                      setState(() {});
                    },
                    itemBuilder: (_, index) {
                      return AnimatedBuilder(
                        animation: pageController,
                        builder: (ctx, child) {
                          return child!;
                        },
                        child: GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text("Hello you tapped at ${index + 1} "),
                              ),
                            );
                          },
                          onPanDown: (d) {
                            carasouelTmer?.cancel();
                            carasouelTmer = null;
                          },
                          onPanCancel: () {
                            carasouelTmer = getTimer();
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                right: 8, left: 8, top: 24, bottom: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: Colors.amberAccent,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 5,
                  ),
                ),
                const SizedBox(height: 12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.circle,
                          size: 12.0,
                          color: pageNo == index
                              ? Colors.indigoAccent
                              : Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const ItemGrid(),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButtonLocation: showBtmAppBr
      //     ? FloatingActionButtonLocation.centerDocked
      //     : FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(
      //     Icons.add,
      //   ),
      // ),
      // bottomNavigationBar: AnimatedBottomNavBar(showBtmAppBr: showBtmAppBr),
    );
  }
}



class FabExt extends StatelessWidget {
  const FabExt({
    Key? key,
    required this.showFabTitle,
  }) : super(key: key);

  final bool showFabTitle;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: AnimatedContainer(
        duration: const Duration(seconds: 2),
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const Icon(CupertinoIcons.cart),
            SizedBox(width: showFabTitle ? 12.0 : 0),
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              child: showFabTitle ? const Text("Go to cart") : const SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
