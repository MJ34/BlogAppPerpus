part of 'widget.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Color color;
  final double horizontal, vertical;
  final double? fontSize;
  final double? heightButton;
  final Function? onTap;

  const ButtonWidget({Key? key,
    required this.title,
    required this.color,
    required this.horizontal,
    required this.vertical,
    this.fontSize,
    this.heightButton,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightButton,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: color),
          onPressed: () {
            if (onTap != null) {
              onTap!();
            }
          },
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: horizontal,
                vertical: vertical),
            child: Text(title, style:
            blackTextStyle.copyWith(
                fontSize:  (fontSize == null) ? 12 :
                fontSize )),
          ))
    );
  }
}
