import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readika/shared_components/search_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      _subtitle(),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),
            SearchButton(onPressed: () {}),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Home Screen New',
          style:
              GoogleFonts.quicksand(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      "Good Morning",
      style: TextStyle(fontSize: 20),
    );
  }

  Widget _subtitle() {
    return Container(
      constraints: BoxConstraints(maxWidth: 200),
      child: Text(
        'Nenza',
        style: TextStyle(fontSize: 20),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
