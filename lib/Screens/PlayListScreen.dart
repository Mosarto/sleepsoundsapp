import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sleepsoundsapp/Data/Data.dart';
import 'package:sleepsoundsapp/Screens/ComposerScreen.dart';
import 'package:sleepsoundsapp/Screens/HomeScreen.dart';

class PlayListScreen extends StatefulWidget {
  final Playlistdata playlist;
  final int mainidex;
  PlayListScreen({
    Key? key,
    required this.playlist,
    required this.mainidex,
  }) : super(key: key);

  @override
  _PlayListScreenState createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  List<int> indexs = [];

  void initState() {
    super.initState();
    var rng = new Random();
    for (var i = 0; i < 2;) {
      int comper = rng.nextInt(playlists.length);
      if (comper != widget.mainidex && indexs.contains(comper) == false) {
        indexs.add(comper);
        i++;
      } else {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img/background.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  height: 44,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            'assets/icon/back.svg',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sleep',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4870FF),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff141927),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff2D344B),
                          ),
                        ),
                      ),
                      SizedBox(height: 18),
                      Text(
                        widget.playlist.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 34,
                        ),
                      ),
                      Container(
                        height: 22,
                        child: Row(
                          children: [
                            Text(
                              widget.playlist.quantidade,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9597A3),
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '  •  ',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9597A3),
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              widget.playlist.style,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9597A3),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(0xff21283F),
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 38,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFF9C41),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icon/unlock.svg',
                                      height: 18,
                                      width: 18,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Unlock',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff21283F),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icon/unfavorite.svg',
                                      height: 18,
                                      width: 18,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Unfavorite',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFF9C41),
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(0xff21283F),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'About this pack',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.playlist.description,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9597A3),
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.topLeft,
                        height: (56 * widget.playlist.songs.length) + 40,
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff21283F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              child: Text(
                                'LIST OF SONGS',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff9A9DAC),
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: widget.playlist.songs.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: 56,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    '0${index + 1}',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color(0xff9A9DAC),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  SizedBox(width: 15),
                                                  Container(
                                                    height: 32,
                                                    width: 32,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xff171D2E),
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/icon/lock.svg',
                                                      height: 16,
                                                      width: 16,
                                                    ),
                                                  ),
                                                  SizedBox(width: 20),
                                                  Text(
                                                    widget
                                                        .playlist.songs[index],
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          widget.playlist.songs.length - 1 !=
                                                  index
                                              ? Container(
                                                  height: 1,
                                                  color: Color(0xff2D344B),
                                                )
                                              : SizedBox(),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Featured On',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 205,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(
                                          top: 10,
                                          bottom: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 1,
                                            color: Color(0xff21283F),
                                          ),
                                          image: DecorationImage(
                                            image: playlists[indexs[0]].img,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Container(
                                          height: 32,
                                          width: 32,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Colors.black.withOpacity(0.7),
                                          ),
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            playlists[indexs[0]].name,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Container(
                                            height: 18,
                                            child: Row(
                                              children: [
                                                Text(
                                                  playlists[indexs[0]]
                                                      .quantidade,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff9597A3),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                Text(
                                                  '  •  ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff9597A3),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                Text(
                                                  playlists[indexs[0]].style,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff9597A3),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(
                                          top: 10,
                                          bottom: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 1,
                                            color: Color(0xff21283F),
                                          ),
                                          image: DecorationImage(
                                            image: playlists[indexs[1]].img,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Container(
                                          height: 32,
                                          width: 32,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Colors.black.withOpacity(0.7),
                                          ),
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            playlists[indexs[1]].name,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Container(
                                            height: 18,
                                            child: Row(
                                              children: [
                                                Text(
                                                  playlists[indexs[1]]
                                                      .quantidade,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff9597A3),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                Text(
                                                  '  •  ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff9597A3),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                Text(
                                                  playlists[indexs[1]].style,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff9597A3),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: 10),
          height: 85,
          color: Color(0xff21283F),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 50,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/discover.svg',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Discover',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4870FF),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: ComposerScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 50,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/composer.svg',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Composer',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8E8E93),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icon/profile.svg',
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8E8E93),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                height: 33,
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 5,
                  width: 135,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
