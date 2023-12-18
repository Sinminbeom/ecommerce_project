import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
// import 'package:marketky/constant/app_color.dart';
// import 'package:marketky/views/screens/login_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Section 1 - Illustration
            Container(
              margin: EdgeInsets.only(top: 32),
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset('assets/icons/shopping illustration.svg'),
            ),
            // Section 2 - Marketky with Caption
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Text(
                    '쇼핑몰',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      fontFamily: 'poppins',
                    )
                  ),
                ),
              ],
            ),
            // Section 3 - Get Started Button
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16),
              margin: EdgeInsets.only(bottom: 16),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                  context.go("/login");
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'poppins'),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 36, vertical: 18)),
                  // backgroundColor: MaterialStateProperty.all(AppColor.primary),
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                  elevation: MaterialStateProperty.all(0),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
                // style: ElevatedButton.styleFrom(
                //   padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18), backgroundColor: AppColor.primary,
                //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                //   elevation: 0,
                //   shadowColor: Colors.transparent,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
