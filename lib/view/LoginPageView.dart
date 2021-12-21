import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracking_works/shared/colors_value.dart';
import 'package:tracking_works/theme/theme_app.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  _LoginPageViewState createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  bool _hidepass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: GoogleFonts.roboto(fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildHeader(context),
              _buildTextfield(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot your password?',
                    style: TrakingWorks.textTheme.subtitle1,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Click Here',
                      style: GoogleFonts.openSans(
                          color: ColorsValue.colorPrimary,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TrakingWorks.textTheme.button,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1,
                    width: (MediaQuery.of(context).size.width * 0.5) - 35,
                    color: Color(0xffB9B9B9),
                  ),
                  Text(
                    'Or',
                    style: GoogleFonts.spartan(),
                  ),
                  Container(
                    height: 1,
                    width: (MediaQuery.of(context).size.width * 0.5) - 35,
                    color: Color(0xffB9B9B9),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: ColorsValue.whatsappColor),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/whatsapp_icon.svg',
                        width: 19.9,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Login with WhatsApp',
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.5,
                            color: Colors.white),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 33),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/icons/login_icon.svg',
            width: MediaQuery.of(context).size.width * 0.3,
            color: ColorsValue.blueIcon,
          ),
          Text(
            'Login',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: ColorsValue.blackColor),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            'Please login to use this application',
            style: TrakingWorks.textTheme.bodyText2,
          ),
        ],
      ),
    );
  }

  Padding _buildTextfield() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 5),
      child: Column(
        children: [
          SizedBox(
            height: 46,
            child: TextField(
              style: GoogleFonts.spartan(
                  fontSize: 14, color: ColorsValue.blackColor),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsValue.textFieldLogin, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsValue.textFieldLogin, width: 1),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(),
                label: Text(
                  'Enter your password',
                  style: TrakingWorks.textTheme.subtitle1,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 46,
            child: TextField(
              style: GoogleFonts.spartan(
                  fontSize: 14, color: ColorsValue.blackColor),
              obscureText: _hidepass,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _hidepass = !_hidepass;
                      });
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/eye-hide.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorsValue.textFieldLogin, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorsValue.textFieldLogin, width: 1),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(),
                  label: Text(
                    'Enter your password',
                    style: TrakingWorks.textTheme.subtitle1,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
