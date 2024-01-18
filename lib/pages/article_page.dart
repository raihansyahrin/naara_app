import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  bool isThumbUpSelected = false;
  bool isThumbDownSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_outlined,
            size: 35,
          ),
        ),
        title: Container(
          width: 43,
          height: 44,
          child: Image(
            image: AssetImage(
              "assets/images/logo.png",
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.share,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article title
              Container(
                child: Text(
                  "Naara, Aplikasi Ciptakan Solusi Air Bersih untuk Masyarakat",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900, fontSize: 25),
                ),
              ),

              SizedBox(height: 20),

              // Article image
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/clean-water.png",
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Article content
              Container(
                child: Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel porta tellus. Mauris quis metus a ante faucibus vehicula nec ut felis. Pellentesque et lectus sed ante maximus iaculis a eu elit. Aliquam eu purus in risus laoreet imperdiet pretium non urna. Morbi vitae pharetra ante. Nulla condimentum, nibh at cursus euismod, mi ligula varius nisi, id varius purus dolor in orci. Vestibulum convallis eleifend tortor nec imperdiet. Proin a lectus cursus, efficitur ex eu, condimentum neque. Mauris elementum ac ipsum et ullamcorper. Integer nec ante dignissim, consequat purus vitae, posuere eros.",
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel porta tellus. Mauris quis metus a ante faucibus vehicula nec ut felis. Pellentesque et lectus sed ante maximus iaculis a eu elit. Aliquam eu purus in risus laoreet imperdiet pretium non urna. Morbi vitae pharetra ante. Nulla condimentum, nibh at cursus euismod, mi ligula varius nisi, id varius purus dolor in orci. Vestibulum convallis eleifend tortor nec imperdiet. Proin a lectus cursus, efficitur ex eu, condimentum neque. Mauris elementum ac ipsum et ullamcorper. Integer nec ante dignissim, consequat purus vitae, posuere eros.",
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel porta tellus. Mauris quis metus a ante faucibus vehicula nec ut felis. Pellentesque et lectus sed ante maximus iaculis a eu elit. Aliquam eu purus in risus laoreet imperdiet pretium non urna. Morbi vitae pharetra ante. Nulla condimentum, nibh at cursus euismod, mi ligula varius nisi, id varius purus dolor in orci. Vestibulum convallis eleifend tortor nec imperdiet. Proin a lectus cursus, efficitur ex eu, condimentum neque. Mauris elementum ac ipsum et ullamcorper. Integer nec ante dignissim, consequat purus vitae, posuere eros.",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Author or source
              Text(
                "Source: -",
              ),

              SizedBox(height: 30),

              // Rating
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Like the article?"),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isThumbUpSelected = !isThumbUpSelected;
                            isThumbDownSelected = false;
                          });
                        },
                        child: Icon(
                          isThumbUpSelected
                              ? Icons.thumb_up
                              : Icons.thumb_up_outlined,
                          size: 50,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isThumbDownSelected = !isThumbDownSelected;
                            isThumbUpSelected = false;
                          });
                        },
                        child: Icon(
                          isThumbDownSelected
                              ? Icons.thumb_down
                              : Icons.thumb_down_outlined,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
