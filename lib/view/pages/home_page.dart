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
      body: ListView(
        children: [
          // Carousel Slider
          FutureBuilder(
              future: PostServices.getPost(5),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data != null) {
                  List<PostModel> data = snapshot.data;
                  return SizedBox(
                      height: Get.height / 3,
                      width: Get.width,
                      child: Stack(
                        children: [
                          CarouselSlider(
                            items: List.generate(
                                data.length,
                                (index) => SliderWidget(
                                    image: data[index]
                                        .imageFuture
                                        .sourceUrl
                                        .toString(),
                                    title: data[index]
                                        .titleModel
                                        .title
                                        .toString())).toList(),
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
                                }),
                          ),

                          // Circle slider
                          Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                padding:
                                    const EdgeInsets.only(left: 24, bottom: 24),
                                child: Row(
                                    children: data.asMap().entries.map((e) {
                                  if (e.key == _current) {
                                    return Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      width: 12,
                                      height: 12,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ThemeColor.yellowColor),
                                    );
                                  } else {
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
                                        heroTag: 'btnSearch',
                                        backgroundColor: (_button == 2)
                                            ? ThemeColor.yellowColor
                                            : const Color(0xFFC4C4C4)
                                                .withOpacity(0.66),
                                        onPressed: () {
                                          // Button left
                                          setState(() {
                                            _reverse = true;
                                            _button = 2;
                                            if (data.length == _current) {
                                              _carouselController
                                                  .animateToPage(1);
                                            }
                                            {
                                              _carouselController
                                                  .animateToPage(_current - 1);
                                            }
                                          });
                                        },
                                        child: (_button == 2)
                                            ? const Icon(
                                                (FontAwesomeIcons.angleLeft),
                                                color: ThemeColor.blackColor,
                                              )
                                            : const Icon(
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
                                            : const Color(0xFFC4C4C4)
                                                .withOpacity(0.66),
                                        onPressed: () {
                                          // Button right
                                          setState(() {
                                            _reverse = true;
                                            _button = 1;
                                            if (data.length == _current) {
                                              _carouselController
                                                  .animateToPage(1);
                                            }
                                            {
                                              _carouselController
                                                  .animateToPage(_current + 1);
                                            }
                                          });
                                        },
                                        child: (_button == 1)
                                            ? const Icon(
                                                (FontAwesomeIcons.angleRight),
                                                color: ThemeColor.blackColor,
                                              )
                                            : const Icon(
                                                (FontAwesomeIcons.angleRight),
                                                color: ThemeColor.whiteColor,
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ));
                } else {
                  return SizedBox(
                    height: Get.height / 3,
                    width: Get.width,
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: ThemeColor.purpleColor,
                      ),
                    ),
                  );
                }
              }),

          // News Card
          const SizedBox(
            height: 10,
          ),

          // ======================== News Card
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("BERITA",
                    style: purpleTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text("See all",
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                    )),
              ],
            ),
          ),

          const SizedBox(
            height: 14,
          ),

          SizedBox(
            height: Get.height / 3.3,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const NewsCard(
                      image:
                          "https://media.istockphoto.com/photos/concept-of-an-open-magic-book-open-pages-with-water-and-land-and-picture-id1279460648?b=1&k=20&m=1279460648&s=170667a&w=0&h=uZa830sWo8hlFN0Y7FnQ14giNC0Z2EBNuTMuNJeJhQg=",
                      title:
                          "Deskripsi: Stack of books on a wooden library shelf, one of them open on top, multicolored book spines background."),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const NewsCard(
                      image:
                          "https://media.istockphoto.com/photos/concept-of-an-open-magic-book-open-pages-with-water-and-land-and-picture-id1279460648?b=1&k=20&m=1279460648&s=170667a&w=0&h=uZa830sWo8hlFN0Y7FnQ14giNC0Z2EBNuTMuNJeJhQg=",
                      title:
                          "Deskripsi: Stack of books on a wooden library shelf, one of them open on top, multicolored book spines background."),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const NewsCard(
                      image:
                          "https://media.istockphoto.com/photos/concept-of-an-open-magic-book-open-pages-with-water-and-land-and-picture-id1279460648?b=1&k=20&m=1279460648&s=170667a&w=0&h=uZa830sWo8hlFN0Y7FnQ14giNC0Z2EBNuTMuNJeJhQg=",
                      title:
                          "Deskripsi: Stack of books on a wooden library shelf, one of them open on top, multicolored book spines background."),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const NewsCard(
                      image:
                          "https://media.istockphoto.com/photos/concept-of-an-open-magic-book-open-pages-with-water-and-land-and-picture-id1279460648?b=1&k=20&m=1279460648&s=170667a&w=0&h=uZa830sWo8hlFN0Y7FnQ14giNC0Z2EBNuTMuNJeJhQg=",
                      title:
                          "Deskripsi: Stack of books on a wooden library shelf, one of them open on top, multicolored book spines background."),
                ),
              ],
            ),
          ),

          // ======================== Artikel Card
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ARTIKEL",
                    style: purpleTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text("See all",
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                    )),
              ],
            ),
          ),

          const SizedBox(
            height: 14,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: const ArtikelCard(),
          ),

          const SizedBox(
            height: 14,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: const ArtikelCard(),
          ),

          const SizedBox(
            height: 14,
          ),

          // ======================== WISATA JATENG Card
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("WISATA JATENG",
                    style: purpleTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text("See all",
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                    )),
              ],
            ),
          ),

          const SizedBox(
            height: 14,
          ),

          SizedBox(
            height: Get.height / 3.3,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const NewsCard(
                      image:
                          "https://media.istockphoto.com/photos/concept-of-an-open-magic-book-open-pages-with-water-and-land-and-picture-id1279460648?b=1&k=20&m=1279460648&s=170667a&w=0&h=uZa830sWo8hlFN0Y7FnQ14giNC0Z2EBNuTMuNJeJhQg=",
                      title:
                          "Deskripsi: Stack of books on a wooden library shelf, one of them open on top, multicolored book spines background."),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const NewsCard(
                      image:
                          "https://media.istockphoto.com/photos/concept-of-an-open-magic-book-open-pages-with-water-and-land-and-picture-id1279460648?b=1&k=20&m=1279460648&s=170667a&w=0&h=uZa830sWo8hlFN0Y7FnQ14giNC0Z2EBNuTMuNJeJhQg=",
                      title:
                          "Deskripsi: Stack of books on a wooden library shelf, one of them open on top, multicolored book spines background."),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const NewsCard(
                      image:
                          "https://media.istockphoto.com/photos/concept-of-an-open-magic-book-open-pages-with-water-and-land-and-picture-id1279460648?b=1&k=20&m=1279460648&s=170667a&w=0&h=uZa830sWo8hlFN0Y7FnQ14giNC0Z2EBNuTMuNJeJhQg=",
                      title:
                          "Deskripsi: Stack of books on a wooden library shelf, one of them open on top, multicolored book spines background."),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const NewsCard(
                      image:
                          "https://media.istockphoto.com/photos/concept-of-an-open-magic-book-open-pages-with-water-and-land-and-picture-id1279460648?b=1&k=20&m=1279460648&s=170667a&w=0&h=uZa830sWo8hlFN0Y7FnQ14giNC0Z2EBNuTMuNJeJhQg=",
                      title:
                          "Deskripsi: Stack of books on a wooden library shelf, one of them open on top, multicolored book spines background."),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
