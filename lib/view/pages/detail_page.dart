part of 'pages.dart';

class DetailPage extends StatefulWidget {
  final PostModel postModel;

  const DetailPage({Key? key, required this.postModel}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // buat variabel btnLove false
  bool _isLove = false;

  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
        title: 'Detail Page',
        child: ListView(
          children: [
            SizedBox(
              height: Get.height / 3 + 24,
              child: Stack(
                children: [
                  Image.network(
                    widget.postModel.imageFuture.sourceUrl.toString(),
                    width: Get.width,
                    fit: BoxFit.cover,
                    height: Get.height / 3,
                  ),
                  Container(
                    width: Get.width,
                    height: Get.height / 3,
                    decoration: BoxDecoration(
                        color: const Color(0xFF0D1839).withOpacity(0.4)),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                        margin: const EdgeInsets.only(left: 24),
                        child: FloatingActionButton(
                          heroTag: 'btnLike',
                          onPressed: () {
                            setState(() {
                              _isLove = !_isLove;
                            });
                          },
                          backgroundColor: ThemeColor.yellowColor,
                          child: (_isLove)
                              ? const FaIcon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.red,
                                )
                              : const FaIcon(
                                  FontAwesomeIcons.solidHeart,
                                  color: ThemeColor.whiteColor,
                                ),
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                        margin: const EdgeInsets.only(left: 90),
                        child: FloatingActionButton(
                          heroTag: 'btnShare',
                          onPressed: () {
                            //Fungsi share
                            Share.share(widget.postModel.link.toString());
                          },
                          backgroundColor: ThemeColor.yellowColor,
                          child: const FaIcon(
                            FontAwesomeIcons.shareAlt,
                            color: ThemeColor.blackColor,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.postModel.titleModel.title.toString(),
                style: purpleTextStyle.copyWith(fontSize: 18),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  //Tampilkan categories
                  listCategory(),

                  const SizedBox(
                    width: 10,
                  ),

                  Container(
                    color: ThemeColor.blackColor,
                    width: 2,
                    height: 18,
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  Text(
                    tglIndo(widget.postModel.date.toString()),
                    style: blackTextStyle.copyWith(
                        fontSize: 10, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    softWrap: true,
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Html(
                  data: widget.postModel.contentModel.content.toString(),
                  style: {
                    "body": Style(
                      textAlign: TextAlign.justify,
                      fontSize: const FontSize(19.0),
                      fontWeight: FontWeight.w500,
                    )
                  },
                )),
            SizedBox(
              height: Get.height / 30,
            )
          ],
        ));
  }

  listCategory() {
    for (int i in widget.postModel.categories) {
      return ButtonWidget(
          heightButton: 22,
          title: categoryName(i).toString(),
          color: ThemeColor.yellowColor,
          horizontal: 1,
          vertical: 1,
          fontSize: 8);
    }
  }
}
