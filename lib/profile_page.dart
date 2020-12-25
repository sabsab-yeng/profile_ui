import 'package:awesome_card/awesome_card.dart';
import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/extra/card_type.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_ui/profile_button_widget.dart';

class MemberProfilePage extends StatefulWidget {
  final String phoneNumber;
  MemberProfilePage({this.phoneNumber});
  @override
  _MemberProfilePageState createState() => _MemberProfilePageState();
}

class _MemberProfilePageState extends State<MemberProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: ClipPath(
                clipper: BackgroundOne(),
                child: Container(
                  height: 340,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 255, 153, 0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: ClipPath(
                clipper: BackgroundTwo(),
                child: Container(
                  height: 320,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 255, 64, 0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: ClipPath(
                clipper: BackgroundThree(),
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: MediaQuery.of(context).size.width * 0.3,
              right: MediaQuery.of(context).size.width * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                  ),
                  Text(
                    'Name: SABSAB',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Member',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 260,
              child: CreditCard(
                cardNumber: 'Visa',
                cardExpiry: "10/25",
                cardHolderName: 'SABSAB',
                cvv: "456",
                bankName: "Express Card",
                cardType: CardType
                    .masterCard, // Optional if you want to override Card Type
                showBackSide: false,
                frontBackground: CardBackgrounds.black,
                backBackground: CardBackgrounds.white,
                showShadow: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 450),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ProfileButtonWidget(
                      icon: FontAwesomeIcons.pen,
                      title: 'Edit profile',
                      onTap: () {},
                    ),
                    ProfileButtonWidget(
                      icon: FontAwesomeIcons.globe,
                      title: 'Language',
                      onTap: () {},
                    ),
                    ProfileButtonWidget(
                      icon: Icons.logout,
                      title: 'Logout',
                      onTap: () {},
                    ),
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

class BackgroundOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.7); //vertical line
    path.quadraticBezierTo(size.width / 2, size.height, size.width,
        size.height * 0.85); //quadratic curve
    path.lineTo(size.width, 0); //vertical line
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class BackgroundTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.9); //vertical line
    path.quadraticBezierTo(size.width / 2, size.height, size.width,
        size.height * 0.64); //quadratic curve
    path.lineTo(size.width, 0); //vertical line
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class BackgroundThree extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.67); //vertical line
    path.quadraticBezierTo(size.width / 2, size.height, size.width,
        size.height * 0.67); //quadratic curve
    path.lineTo(size.width, 0); //vertical line
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
