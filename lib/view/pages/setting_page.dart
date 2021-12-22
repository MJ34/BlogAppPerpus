part of 'pages.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
        title: 'Setting',
        child: Container(
          margin: const EdgeInsets.only(top: 48),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Center(
                  child: Image.asset(Assets.icons = 'assets/icons/akun.png',
                  height: 102, width: 102,
                  )),
                const SizedBox(
                  height: 30,
                ),
                divider(),
                textSetting("Create Account"),
                divider(),
                textSetting("Activities"),
                divider(),
                textSetting("Screen Mode"),
                divider(),
                textSetting("About App"),
              ],
            )
        ));
  }

  Divider divider() {
    return const Divider(
      color: ThemeColor.purpleColor,
      height: 1,
      thickness: 1.5,
    );
  }

  Container textSetting(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: purpleTextStyle,
          ),
          const FaIcon(FontAwesomeIcons.angleRight,
              color: ThemeColor.purpleColor)
        ],
      ),
    );
  }
}
