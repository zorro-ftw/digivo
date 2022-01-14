import 'package:digivo/constants.dart';
import 'package:digivo/ui/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: kLoginTextFieldFillColor,
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/wallpaper412.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 40, bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        constraints:
                            const BoxConstraints(minWidth: double.infinity),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10,
                              )
                            ]),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Icon(
                              FontAwesomeIcons.lock,
                              size: 75,
                              color: kPrimaryColor,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Enter your passcode',
                              style: TextStyle(
                                  fontFamily: 'AvenirNext',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: PinPut(
                                pinAnimationType: PinAnimationType.none,
                                obscureText: '●',
                                fieldsCount: 4,
                                eachFieldHeight: 60.0,
                                eachFieldWidth: 50.0,
                                selectedFieldDecoration:
                                    _pinPutDecoration.copyWith(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: kLoginTextFieldBorderColor,
                                            width: 2)),
                                followingFieldDecoration: _pinPutDecoration,
                                submittedFieldDecoration: _pinPutDecoration,
                                textStyle: const TextStyle(
                                    fontFamily: 'AvenirNext',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0),
                              ),
                            ),
                            SizedBox(height: size.height / 13),
                            kLoginDivider,
                            SizedBox(
                              height: size.height / 30,
                            ),
                            SizedBox(
                              height: size.height / 15,
                            ),
                            const Icon(
                              Icons.fingerprint_rounded,
                              size: 75,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              constraints:
                                  BoxConstraints(maxWidth: size.width / 3),
                              child: const Text(
                                'Scan for easy and secure login',
                                style: TextStyle(
                                  fontFamily: 'AvenirNext',
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
