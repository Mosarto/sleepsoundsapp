import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sleepsoundsapp/Data/Data.dart';
import 'package:sleepsoundsapp/Screens/ComposerScreen.dart';
import 'package:sleepsoundsapp/Screens/PlayListScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff141927),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Sleep',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Container(
                        height: 38,
                        margin: EdgeInsets.only(left: 15),
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Color(0xff4870FF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/all.svg',
                            ),
                            SizedBox(width: 5),
                            Text(
                              'All',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 38,
                        margin: EdgeInsets.only(left: 15),
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Color(0xff21283F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/ambient.svg',
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Ambient',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 38,
                        margin: EdgeInsets.only(left: 15),
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Color(0xff21283F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/kids.svg',
                            ),
                            SizedBox(width: 5),
                            Text(
                              'For Kids',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width + 380,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                  ),
                  itemCount: playlists.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      highlightColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: PlayListScreen(
                              playlist: playlists[index],
                              mainidex: index,
                            ),
                          ),
                        );
                      },
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
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xff21283F),
                                  ),
                                  image: DecorationImage(
                                    image: playlists[index].img,
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
                                    color: Colors.black.withOpacity(0.7),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    playlists[index].name,
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
                                          playlists[index].quantidade,
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
                                          playlists[index].style,
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
                    );
                  },
                ),
              ),
            ],
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
                    Container(
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
