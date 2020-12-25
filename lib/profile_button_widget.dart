import 'package:flutter/material.dart';

class ProfileButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData icon;

  ProfileButtonWidget({this.onTap, this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 5,
        shape: StadiumBorder(),
        child: InkWell(
          onTap: () {
            if (onTap != null) {
              onTap();
            }
          },
          child: Container(
            margin: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.pink,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
