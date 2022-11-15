import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmvvm/mvvm_builder.widget.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:readika/app/module/detail/detail.vm.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MVVM<DetailVm>(
      view: () => _DetailScreenView(),
      viewModel: DetailVm(),
    );
  }
}

class _DetailScreenView extends StatelessView<DetailVm> {
  @override
  Widget render(BuildContext context, DetailVm viewModel) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF181a24),
                  )),
              // ignore: prefer_const_literals_to_create_immutables
              actions: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Text(
                      'HOTTEST BOOK',
                      style: TextStyle(
                          color: Color.fromARGB(255, 114, 114, 115),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            body: Container(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 120),
                    decoration: const BoxDecoration(
                        color: Color(0xFFFDB137),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                  ),
                  SingleChildScrollView(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              height: 175,
                              width: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Image.network(
                                  'https://static.wikia.nocookie.net/solo-leveling/images/b/bf/Solo_Leveling_Returns.png/revision/latest?cb=20200715031557'),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Text(
                              'Solo Leveling',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Chun-Gong',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: LinearProgressIndicator(
                                backgroundColor: Color(0xFFF9F8F3),
                                color: Color(0xFFC1D1D1),
                                value: 0.7,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '60 pages left',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 14),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Genre',
                                      style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.directions_walk,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      'Action',
                                      style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Rating',
                                      style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      '100 reviews',
                                      style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Length',
                                      style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '250',
                                      style: GoogleFonts.lato(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'pages',
                                      style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Description',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
