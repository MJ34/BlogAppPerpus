part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: Get.width / 2,
          child: Image.asset(Assets.logo = 'assets/logo/appbar.png'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //OnPress Button
          },
            icon: const FaIcon(FontAwesomeIcons.search,
              color: ThemeColor.purpleColor
            ))
        ],
      ),

      body: SizedBox(
        height: Get.height / 3.25,
        width: Get.width,
        child: Stack(
          children: [
            CarouselSlider(
              items: slider,
              options: CarouselOptions(
                height: 240,
                viewportFraction: 1,
                aspectRatio: 2,
                autoPlay: true,
                enlargeCenterPage: true,
                reverse: false,
              ),
            ),

            // Circle slider
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 24, bottom: 24),
                child: Row(
                  children: [
                    //Oval
                    Container(
                      margin: const EdgeInsets.only(
                          right: 5),
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ThemeColor.whiteColor
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 5),
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ThemeColor.whiteColor
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 5),
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ThemeColor.whiteColor
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 5),
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ThemeColor.whiteColor
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 5),
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ThemeColor.yellowColor
                      ),
                    ),
                  ],
                ),
              )
            ),

            // Buttom next & prev
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 24, bottom: 24, right: 24),
                  child: Row(
                    children: [
                     SizedBox(
                       height: 32,
                       width: 32,
                       child: FloatingActionButton(
                         backgroundColor:
                         const Color(0xFFC4C4C4).withOpacity(0.65),
                         onPressed: (){},
                         child: const Icon(FontAwesomeIcons.angleLeft),
                       ),
                     ),
                      const SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        height: 32,
                        width: 32,
                        child: FloatingActionButton(
                          backgroundColor: ThemeColor.yellowColor,
                          onPressed: (){},
                          child: const Icon((FontAwesomeIcons.angleRight),
                            color: ThemeColor.blackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        )
      )
    );
  }
}
