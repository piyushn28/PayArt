import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payart/utils/universal_variables.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _chipSelected = 0;
  List<String> chips = wallpapersChips.chips;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: UniversalVariables.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.sort,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: Stack(
              children: [
                Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 35,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, size.width * 0.005, size.width * 0.005, 0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          border: Border.all(color: UniversalVariables.bgColor),
                          color: UniversalVariables.notiColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/searchBg.png"),
                    fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore",
                    style: GoogleFonts.redHatDisplay(
                        color: UniversalVariables.kPrimaryTextColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w800),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: GoogleFonts.redHatDisplay(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search artists, wallpapers"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              //padding: EdgeInsets.all(30),
              width: size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: size.width / 7,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: chips.length,
                        itemBuilder: (BuildContext context, int index) {
                          return WallpaperTypeClips(
                              title: chips[index], size: size);
                        }),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WallpaperTypeClips extends StatelessWidget {
  const WallpaperTypeClips({Key key, @required this.size, @required this.title})
      : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width / 40,
        ),
        Container(
          width: size.width / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: UniversalVariables.minimalClipColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: size.width / 10,
                    width: size.width / 10,
                    decoration: BoxDecoration(
                      gradient: UniversalVariables.minimalClipColorGradient,
                      borderRadius: BorderRadius.circular(30),
                      //color: UniversalVariables.minimalClipColor,
                    )),
              ),
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.redHatDisplay(
                      color: UniversalVariables.kPrimaryTextColor,
                      fontSize: TextSize.mediumSize,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
