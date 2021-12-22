part of 'widget.dart';

class VideoCard extends StatelessWidget {

  final String image, title;

  const VideoCard({Key? key,
    required this.image,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24, top: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: Get.height / 3,
          child: Stack(
            children: [
              Image.network(
                image.toString(),
                width: Get.width,
                fit: BoxFit.cover,
              ),
              Container(
                width: Get.width,
                height: Get.height,
                decoration: BoxDecoration(
                    color: const Color(0xFF0D1839).withOpacity(0.5)
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title.toString(),
                        style: whiteTextStyle.copyWith(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                     FloatingActionButton(
                       onPressed: () {},
                       backgroundColor: ThemeColor.yellowColor,
                       child: const FaIcon(
                         FontAwesomeIcons.play,
                         color: ThemeColor.blackColor,
                       ),
                     )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> videoList = [
  const VideoCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "Berita"),
  const VideoCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "Artikel"),
  const VideoCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "Wisata Jateng"),
  const VideoCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "Kuliner Jateng"),
  const VideoCard(image: "https://images.unsplash.com/photo-1600904290455-241ce18f78bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80", title: "UMKM Jateng"),
];
