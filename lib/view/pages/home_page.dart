part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _current = 0;
  bool _reverse = false;
  int _button = 0;
  final CarouselController _carouselController = CarouselController();

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
                    color: ThemeColor.purpleColor))
          ],
        ),
        body: SizedBox(
            height: Get.height / 3.25,
            width: Get.width,
            child: Stack(
              children: [
                CarouselSlider(
                  items: slider,
                  carouselController: _carouselController,
                  options: CarouselOptions(
                    height: 240,
                    viewportFraction: 1,
                    aspectRatio: 2,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    reverse: _reverse,
                    onPageChanged: (index, reason) {
                      setState(() {

                        _current = index;
                      });
                    }
                  ),
                ),

                // Circle slider
                Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 24, bottom: 24),
                      child: Row(
                        children: slider.asMap().entries.map((e) {
                          if (e.key == _current) {
                            return Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 12,
                              height: 12,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ThemeColor.yellowColor),
                            );
                          }  else {
                          return Container(
                            margin: const EdgeInsets.only(right: 5),
                            width: 12,
                            height: 12,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ThemeColor.whiteColor),
                          );
                          }
                        }).toList()),
                      )),

                // Buttom next & prev
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 24, bottom: 24, right: 24),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: FloatingActionButton(
                              backgroundColor: (_button == 2)
                                  ? ThemeColor.yellowColor
                                  : const Color(0xFFC4C4C4).withOpacity(0.66),
                              onPressed: () {
                                // Button left
                                setState(() {
                                  _reverse = false;
                                  _button = 2;
                                  if (slider.length == _current) {
                                    _carouselController.animateToPage(1);
                                  } {
                                    _carouselController.animateToPage(_current - 1);
                                  }
                                });
                              },
                              child: (_button == 2)
                                  ? const Icon(
                                (FontAwesomeIcons.angleLeft),
                                color: ThemeColor.blackColor,
                              ) : const Icon(
                                (FontAwesomeIcons.angleLeft),
                                color: ThemeColor.whiteColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: FloatingActionButton(
                              backgroundColor: (_button == 1)
                                  ? ThemeColor.yellowColor
                              : const Color(0xFFC4C4C4).withOpacity(0.66),
                              onPressed: () {
                                // Button right
                                setState(() {
                                  _reverse = true;
                                  _button = 1;
                                  if (slider.length == _current) {
                                    _carouselController.animateToPage(1);
                                  } {
                                    _carouselController.animateToPage(_current + 1);
                                  }
                                });
                              },
                              child: (_button == 1)
                                ? const Icon(
                                (FontAwesomeIcons.angleRight),
                                color: ThemeColor.blackColor,
                              ) : const Icon(
                                (FontAwesomeIcons.angleRight),
                                color: ThemeColor.whiteColor,
                            ),
                          ),
                          ),
                        ],
                      ),
                    )),
              ],
            )));
  }
}
