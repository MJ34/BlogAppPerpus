part of 'widget.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Color color;
  final double horizontal, vertical;
  const ButtonWidget({Key? key,
    required this.title,
    required this.color,
    required this.horizontal,
    required this.vertical
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () {},
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: horizontal,
              vertical: vertical),
          child: Text(title, style:
          blackTextStyle),
        ));
  }
}
