import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sleepsoundsapp/Data/Data.dart';
import 'package:sleepsoundsapp/Screens/HomeScreen.dart';

class ComposerScreen extends StatefulWidget {
  ComposerScreen({Key? key}) : super(key: key);

  @override
  _ComposerScreenState createState() => _ComposerScreenState();
}

class _ComposerScreenState extends State<ComposerScreen> {
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
                  'Composer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 205,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Child',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Quickly stabilize your baby’s emotions',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9597A3),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (final childList in childData) ...[
                                Container(
                                  width: 100,
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: childList.color,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          padding: EdgeInsets.only(top: 10),
                                          alignment: Alignment.center,
                                          child: SvgPicture.asset(
                                            'assets/icon/${childList.icon}',
                                            height: 28,
                                            width: 28,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Color(0xff2D344B),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Text(
                                            childList.title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              SizedBox(width: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 205,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Nature',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'It will allow you to merge with nature',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9597A3),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (final naturelist in natureData) ...[
                                Container(
                                  width: 100,
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: naturelist.color,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          padding: EdgeInsets.only(top: 10),
                                          alignment: Alignment.center,
                                          child: SvgPicture.asset(
                                            'assets/icon/${naturelist.icon}',
                                            height: 28,
                                            width: 28,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Color(0xff2D344B),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Text(
                                            naturelist.title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              SizedBox(width: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 205,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Animals',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Animal voices will improve your sleep',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9597A3),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (final animalsList in animalsData) ...[
                                Container(
                                  width: 100,
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: animalsList.color,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          padding: EdgeInsets.only(top: 10),
                                          alignment: Alignment.center,
                                          child: SvgPicture.asset(
                                            'assets/icon/${animalsList.icon}',
                                            height: 28,
                                            width: 28,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Color(0xff2D344B),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Text(
                                            animalsList.title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              SizedBox(width: 20),
                            ],
                          ),
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
                              color: Color(0xff8E8E93),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Discover',
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
                            'assets/icon/composer.svg',
                            height: 24,
                            width: 24,
                            color: Color(0xff4870FF),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Composer',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4870FF),
                              fontSize: 10,
                            ),
                          ),
                        ],
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
