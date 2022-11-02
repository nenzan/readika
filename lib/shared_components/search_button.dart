import 'package:flutter/material.dart';
import 'package:readika/constant/custom_icons.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({required this.onPressed, Key? key}) : super(key: key);
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: IconButton(
        constraints: BoxConstraints(maxHeight: 50, maxWidth: 50),
        iconSize: 15,
        padding: EdgeInsets.all(10),
        onPressed: onPressed,
        icon: Icon(Icons.search),
        tooltip: "Search",
      ),
    );
  }
}
