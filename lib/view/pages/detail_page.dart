part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

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
                    "https://images.unsplash.com/photo-1548003411-73cb4c666bb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
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
                          onPressed: () {},
                          backgroundColor: ThemeColor.yellowColor,
                          child: const FaIcon(
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
                          onPressed: () {},
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
                'The standard Lorem Ipsum passage, used since the 1500s',
                style: purpleTextStyle.copyWith(fontSize: 18),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children:  [
                  const ButtonWidget(
                      heightButton: 22,
                      title: 'Perpus',
                      color: ThemeColor.yellowColor,
                      horizontal: 1,
                      vertical: 1,
                      fontSize: 8),

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
                    "12 Desember 2021",
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
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\nWhy do we usit?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                textAlign: TextAlign.justify,
                style: purpleTextStyle.copyWith(fontSize: 12),
              ),
            ),
            SizedBox(
              height: Get.height / 30,
            )
          ],
        ));
  }
}
