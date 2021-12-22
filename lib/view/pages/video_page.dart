part of 'pages.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
        title: 'Video',
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
          children: videoList,
        ));
  }
}
