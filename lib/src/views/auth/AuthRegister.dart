import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
// import 'package:marketky/constant/app_color.dart';
// import 'package:marketky/views/screens/login_page.dart';
// import 'package:marketky/views/screens/otp_verification_page.dart';

class AuthRegister extends StatefulWidget {
  const AuthRegister({super.key});
  @override
  State<AuthRegister> createState() => _AuthRegisterState();
}

class _AuthRegisterState extends State<AuthRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        title: Text('회원가입', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)),
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
            context.push('/login');
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
          ),
          // style: TextButton.styleFrom(
          //   foregroundColor: AppColor.secondary.withOpacity(0.1),
          // ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.secondary)),
              Text(' Sign in', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Theme.of(context).colorScheme.primary)),
            ],
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        physics: const BouncingScrollPhysics(),
        children: [
          // Section 1 - Header
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 12),
            child: Text(
              '쇼핑몰에 오신 것을 환영합니다  👋',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.secondary)
            ),
          ),
          // Container(
          //   margin: const EdgeInsets.only(bottom: 32),
          //   child: Text(
          //     'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod ',
          //     style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 12, height: 150 / 100),
          //   ),
          // ),
          // Section 2  - Form
          // Full Name
          TextField(
            autofocus: false,
            decoration: InputDecoration(
              hintText: '이름',
              prefixIcon: Container(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset('assets/icons/Profile.svg', color: Theme.of(context).colorScheme.primary),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
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
            ),
          ),
          const SizedBox(height: 16),
          // Username
          TextField(
            autofocus: false,
            decoration: InputDecoration(
              hintText: '별명',
              prefixIcon: Container(
                padding: const EdgeInsets.all(12),
                child: Text('@', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary)),
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
            ),
          ),
          const SizedBox(height: 16),
          // Email
          TextField(
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: '이메일',
              prefixIcon: Container(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset('assets/icons/Message.svg', color: Theme.of(context).colorScheme.primary),
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
            ),
          ),
          const SizedBox(height: 16),
          // Password
          TextField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: '비밀번호',
              prefixIcon: Container(
                padding: const EdgeInsets.all(12),
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
          const SizedBox(height: 16),
          // Repeat Password
          TextField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: '비밀번호 확인',
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
          const SizedBox(height: 24),
          // Sign Up Button
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => OTPVerificationPage()));
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 36, vertical: 18)),
              backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
              elevation: MaterialStateProperty.all(0),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
            ),
            child: Text('회원가입', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white)),
            // style: ElevatedButton.styleFrom(
            //   padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
            //   backgroundColor: AppColor.primary,
            //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            //   elevation: 0,
            //   shadowColor: Colors.transparent,
            // ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'or continue with',
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ),
          // SIgn in With Google
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 36, vertical: 12)),
              backgroundColor: MaterialStateProperty.all(const Color(0xFFEAEAF2)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
              elevation: MaterialStateProperty.all(0),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
            ),
            // style: ElevatedButton.styleFrom(
            //   foregroundColor: AppColor.primary, padding: EdgeInsets.symmetric(horizontal: 36, vertical: 12), backgroundColor: AppColor.primarySoft,
            //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            //   elevation: 0,
            //   shadowColor: Colors.transparent,
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/Google.svg'),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    'Continue with Google',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.secondary)
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
