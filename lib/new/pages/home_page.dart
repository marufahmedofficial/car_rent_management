import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/homePage/most_rented.dart';
import '../widgets/homePage/top_brands.dart';

class HomePageNew extends StatefulWidget {
  static const String routeName = '/';
  const HomePageNew({Key? key}) : super(key: key);

  @override
  _HomePageNewState createState() => _HomePageNewState();
}

class _HomePageNewState extends State<HomePageNew> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0), //appbar size
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 4.0,
          shadowColor: Colors.purple,
          backgroundColor: Colors.blue.shade700,
          leading: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
            ),
            child: SizedBox(
              height: size.width * 0.1,
              width: size.width * 0.1,
              child: Container(
                decoration: BoxDecoration(
                  color: themeData.colorScheme.background.withOpacity(0.03),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Icon(
                  UniconsLine.bars,
                  color: themeData.secondaryHeaderColor,
                  size: size.height * 0.025,
                ),
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          leadingWidth: size.width * 0.15,
          title: Text('Car Rent',style: TextStyle(
            fontSize: 23,color: Colors.blue.shade200,fontWeight: FontWeight.bold
          ),),
          // Image.asset(
          //   themeData.brightness == Brightness.dark
          //       ? 'assets/icons/SobGOGlight.png'
          //       : 'assets/icons/SobGOGdark.png', //logo
          //   height: size.height * 0.06,
          //   width: size.width * 0.35,
          // ),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                right: size.width * 0.05,
              ),
              child: SizedBox(
                height: size.width * 0.1,
                width: size.width * 0.1,
                child: Container(
                  decoration: BoxDecoration(
                    color: themeData.colorScheme.background.withOpacity(0.03),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Icon(
                    UniconsLine.search,
                    color: themeData.secondaryHeaderColor,
                    size: size.height * 0.025,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: buildBottomNavBar(1, size, themeData),
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.04,
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: themeData.cardColor, //section bg color
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.04,
                      ),
                      child: Align(
                        child: Text(
                          'Enjoy Our features',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color:  Colors.blue.shade900,
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.01,
                      ),
                      child: Align(
                        child: Text(
                          'Enjoy the fun driving in Enterprise',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.blue.shade700,
                            fontSize: size.width * 0.035,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.03,
                        left: size.width * 0.04,
                        bottom: size.height * 0.025,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.65,
                            height: size.height * 0.06,
                            child: TextField(
                              //searchbar
                              style: GoogleFonts.poppins(
                                color: themeData.primaryColor,
                              ),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  top: size.height * 0.01,
                                  left: size.width * 0.04,
                                  right: size.width * 0.04,
                                ),
                                enabledBorder: textFieldBorder(),
                                focusedBorder: textFieldBorder(),
                                border: textFieldBorder(),
                                hintStyle: GoogleFonts.poppins(
                                    color:  Colors.blueGrey
                                ),
                                hintText: 'Search a car',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.025,
                            ),
                            child: Container(
                              height: size.height * 0.06,
                              width: size.width * 0.14,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(0xff3b22a1), //filters bg color
                              ),
                              child: Icon(
                                UniconsLine.sliders_v,
                                color: Colors.white,
                                size: size.height * 0.032,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildTopBrands(size, themeData),
            buildMostRented(size, themeData),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder textFieldBorder() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.5),
        width: 1.0,
      ),
    );
  }
}
