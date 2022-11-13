import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pmvvm/mvvm_builder.widget.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:readika/app/module/home/home.vm.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MVVM<HomeVm>(view: () => _HomeScreenView(), viewModel: HomeVm());
  }
}

class _HomeScreenView extends StatelessView<HomeVm> {
  @override
  Widget render(BuildContext context, HomeVm viewModel) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                decoration: BoxDecoration(
                    color: Color(0xFFFDB137),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Hello, Ardika!'),
                              Text(
                                'Explore these books',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.account_box_rounded,
                            size: 45,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 32),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF9F8F3),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.search),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Search a book...',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 16),
                            height: 150,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Image.network(
                                'https://m.media-amazon.com/images/I/51ZJ9RjiC0L._AC_SY780_.jpg'),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('continue reading...'),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Atomic Habits',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                'James Clear',
                                style: TextStyle(color: Colors.black54),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.75,
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
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Genres',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xFFFDB137),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Icon(Icons.book_outlined, color: Colors.white),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Self Development',
                              style: TextStyle(
                                overflow: TextOverflow.clip,
                              ),
                              maxLines: 2,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xFFFDB137),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Icon(Icons.book_outlined, color: Colors.white,),
                            SizedBox(
                              width: 4,
                            ),
                            Text('Sci - Fi')
                          ],
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Hottest books',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16, left: 8),
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Image.network(
                        'https://s3-ap-southeast-1.amazonaws.com/ebook-previews/51104/195325/1.jpg'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Image.network(
                        'https://m.media-amazon.com/images/I/513LYPt7xtL.jpg'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Image.network(
                        'https://static.wikia.nocookie.net/solo-leveling/images/b/bf/Solo_Leveling_Returns.png/revision/latest?cb=20200715031557'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
