import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
// import 'package:marketky/constant/app_color.dart';
// import 'package:marketky/views/screens/page_switcher.dart';
// import 'package:marketky/views/screens/register_page.dart';

class AuthLogin extends StatefulWidget {
  const AuthLogin({super.key});

  @override
  State<AuthLogin> createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        title: Text('로그인', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/icons/Arrow-left.svg'),
        ), systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 48,
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));
            context.push('/register');
          },
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary.withOpacity(0.1))
          ),
          // 11.21
          // style: TextButton.styleFrom(
          //   foregroundColor: AppColor.secondary.withOpacity(0.1),
          // ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.7),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                ' Sign up',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 24),
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Header
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 12),
            child: Text(
              '쇼핑몰 ! 😁',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w700,
                fontFamily: 'poppins',
                fontSize: 20,
              ),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.only(bottom: 32),
          //   child: Text(
          //     'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod ',
          //     style: TextStyle(color: Theme.of(context).colorScheme.secondary.withOpacity(0.7), fontSize: 12, height: 150 / 100),
          //   ),
          // ),
          // Section 2 - Form
          // Email
          TextField(
            autofocus: false,
            decoration: InputDecoration(
              hintText: 'youremail@email.com',
              prefixIcon: Container(
                padding: EdgeInsets.all(12),
                child: SvgPicture.asset('assets/icons/Message.svg', color: Theme.of(context).colorScheme.primary),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.surface, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              // fillColor: AppColor.primarySoft,
              fillColor: Theme.of(context).colorScheme.primaryContainer,
              filled: true,
            ),
          ),
          SizedBox(height: 16),
          // Password
          TextField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: '**********',
              prefixIcon: Container(
                padding: EdgeInsets.all(12),
                child: SvgPicture.asset('assets/icons/Lock.svg', color: Theme.of(context).colorScheme.primary),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryContainer, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              fillColor: Theme.of(context).colorScheme.primaryContainer,
              filled: true,
              //
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/Hide.svg', color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ),
          // Forgot Passowrd
          Container(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password ?',
                style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.secondary.withOpacity(0.5), fontWeight: FontWeight.w700),
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary.withOpacity(0.1))
              ),
              // 11.21
              // style: TextButton.styleFrom(
              //   foregroundColor: AppColor.primary.withOpacity(0.1),
              // ),
            ),
          ),
          // Sign In button
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageSwitcher()));
            },
            child: Text(
              '로그인',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'poppins'),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 36, vertical: 18)),
              backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
              elevation: MaterialStateProperty.all(0),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
            ),
            // style: ElevatedButton.styleFrom(
            //   padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
            //   backgroundColor: AppColor.primary,
            //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            //   elevation: 0,
            //   shadowColor: Colors.transparent,
            // ),
          ),
        ],
      ),
    );
  }
}
