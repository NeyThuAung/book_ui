import 'package:book_ui/recent_checklist_item.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _HomePageState();
}

class _HomePageState extends State<LibraryPage> {
  final List _book = [
    'Part 500',
    'Part 10',
    'Part 50',
    'Part 16',
    'Part 56',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0e0e10),

        //app bar

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF0e0e10),
          title: const Text(
            'My Library',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Center(
              child: Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {
                      // Handle notification icon tap
                    },
                  ),
                  Positioned(
                    top: 4,
                    right: 24,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green,
                      ),
                      child: const Text(
                        '99 +',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 16,
              ),
              child: Text(
                'Latest Book',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 0),
                  height: 160,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'lib/images/book_thumbnail.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 0, right: 16),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Color(0xFF1c1c1f),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Tess of the Road & Sample\n Book with long name',
                                softWrap: true,
                                overflow: TextOverflow.clip,
                                textWidthBasis: TextWidthBasis.parent,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: 20,
                                child: Image.asset(
                                  'lib/images/dots.png',
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 100,
                                child: LinearPercentIndicator(
                                  lineHeight: 5,
                                  percent: 0.4,
                                  progressColor: Colors.green,
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                              const Text(
                                'Part 50',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.green,
                                ),
                              ),
                              onPressed: () {
                                // Handle button press
                              },
                              child: Text(
                                'Continue Reading',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),

            // check list title

            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 16,
              ),
              child: Text(
                'Recent Checklist',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),

            // recent check list
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: _book.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 330,
                ),
                itemBuilder: (content, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: 220,
                            height: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                image:
                                    AssetImage('lib/images/book_thumbnail.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _book[index],
                                style: TextStyle(
                                    fontSize: 16, color: Colors.green),
                              ),
                              Container(
                                height: 20,
                                child: Image.asset(
                                  'lib/images/dots.png',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
