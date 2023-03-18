import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({
    required this.leadingIcon,
    required this.Title,
    required this.subTitle,
    required this.TrailingIcon,
    this.marginBottom = 0,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final IconData leadingIcon;
  final String Title;
  final String subTitle;
  final IconData TrailingIcon;
  final double marginBottom;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin:
          EdgeInsetsDirectional.only(start: 30, end: 30, bottom: marginBottom),
      child: ListTile(
          leading: Icon(leadingIcon),
          title: Text(Title),
          subtitle: Text(subTitle),
          trailing: IconButton(
              // onPressed: () {},/*void function() */
              onPressed: onPressed,
              /*void function() */
              icon: Icon(TrailingIcon))),
    );
  }
}
