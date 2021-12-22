part of 'widget.dart';

class HeaderWidget extends StatelessWidget {

  final String title;
  final Function? searchOnTap;
  final Widget child;

  const HeaderWidget({Key? key,
    required this.title,
    this.searchOnTap,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.bgColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            title,
            style: purpleTextStyle,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (searchOnTap != null) {
                  searchOnTap!();
                }
              },
              icon: const FaIcon(FontAwesomeIcons.search,
                  color: ThemeColor.purpleColor))
        ],
        leading: SizedBox(
          height: 12,
          child: Image.asset(
            Assets.icons = 'assets/icons/jateng.png',
          ),
        ),
      ),
      body: child,
    );
  }
}
