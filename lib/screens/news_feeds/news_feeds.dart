import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewsFeeds extends StatefulWidget {
  const NewsFeeds({Key? key}) : super(key: key);

  @override
  State<NewsFeeds> createState() => _NewsFeedsState();
}

class _NewsFeedsState extends State<NewsFeeds> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: SvgPicture.asset(
          "assets/icon/ic_instagram.svg",
          semanticsLabel: 'instagram Logo',
          height: 200,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.heart_broken,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.telegram,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    10,
                    (index) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                child: ClipRRect(
                                  borderRadius:
                                      new BorderRadius.circular(100.0),
                                  child: Image.asset("assets/images/image.PNG"),
                                ),
                              ),
                              Text("nouen_thary")
                            ],
                          ));
                    },
                  ),
                ],
              ),
            ),
            CardImage(image: 'assets/images/im.jpg'),
            CardImage(image: "assets/images/image.PNG"),
            CardImage(image: 'assets/images/im.jpg'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        selectedItemColor: Colors.black87,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({Key? key, required this.image}) : super(key: key);

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(100.0),
                  child: Image.asset("assets/images/image.PNG"),
                ),
              ),
              SizedBox(width: 10),
              Text("real_madrid"),
              Spacer(),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Image.asset(image!),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.heart_broken_outlined),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.message_outlined),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.send_outlined),
              Spacer(),
              Icon(Icons.label_important_outline)
            ],
          ),
        ),
        Text("90 like"),
        Text(
            "ជម្រើសជើងឯក ខេមបូឌានព្រីមៀរលីគ ឆ្នាំ២០២៣/២៤ 🔴 សប្ដាហ៍ទី១៣ (ជុំទី២)"),
        SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
