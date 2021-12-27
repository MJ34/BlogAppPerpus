part of 'widget.dart';

class ArtikelCard extends StatelessWidget {

  final String image, title, date;
  final Function? onTap;

  const ArtikelCard({Key? key,
    required this.image,
    required this.title,
    required this.date,
    this.onTap
  }) : super(key: key);

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
        child: InkWell(
          onTap: () {
            if (onTap != null) {
              onTap!();
            }
          },
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  image.toString(),
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
                        title.toString(),
                        style: blackTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                        maxLines: 2,
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
                        date.toString(),
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
          ),
        ));
  }
}
