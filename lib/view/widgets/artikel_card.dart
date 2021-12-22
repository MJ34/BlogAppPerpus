part of 'widget.dart';

class ArtikelCard extends StatelessWidget {
  const ArtikelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height / 8,
        width: Get.width,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: ThemeColor.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://images.unsplash.com/photo-1512820790803-83ca734da794?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1198&q=80",
                width: Get.width / 2.5,
                height: Get.height / 8,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: Get.width / 2.2,
                    margin: const EdgeInsets.only(top: 6, bottom: 6),
                    child: Text(
                      "Getting Started This project is a starting point for a Flutter application.",
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                      maxLines: 3,
                      softWrap: true,
                    )),
                Row(
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
                const SizedBox(
                  height: 8,
                ),
              ],
            )
          ],
        ));
  }
}
