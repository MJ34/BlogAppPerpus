part of 'pages.dart';

class NoConnectionPage extends StatelessWidget {
  const NoConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.whiteColor,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          Image.asset(
            Assets.images = 'assets/images/no_connection.jpg',
            height: Get.height / 2.5,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 44,),
          ButtonWidget(
              title: "Try Again",
              color: ThemeColor.yellowColor,
              horizontal: 16,
              vertical: 6)
        ],
      )
      ),
    );
  }
}
