import 'package:dapuronline_user/view/login_view.dart';
import 'package:flutter/material.dart';

class UserTabView extends StatelessWidget {
  const UserTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          children: [
            Column(
              children: [
                Image(
                    width: 120,
                    height: 120,
                    image:
                    AssetImage('assets/ppitoh.png')), // Profile Picture
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Innaka',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ), // Nama
                SizedBox(
                  height: 5,
                ),
                Text(
                  '+62 8561234567',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ), // Nomor HP
              ],
            ), // User Info
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Text(
                              'My Profile',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ), // Text
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                              color: Colors.black,
                            ),
                          ), // Arrow Icon
                        ],
                      )), // My Profile
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Text(
                              'Change Password',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ), // Text
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                              color: Colors.black,
                            ),
                          ), // Arrow Icon
                        ],
                      )), // Change Password
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Text(
                              'Payment Settings',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ), // Text
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                              color: Colors.black,
                            ),
                          ), // Arrow Icon
                        ],
                      )), // Payment Settings
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Text(
                              'My Voucher',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ), // Text
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                              color: Colors.black,
                            ),
                          ), // Arrow Icon
                        ],
                      )), // My Voucher
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Text(
                              'Notification',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ), // Text
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                              color: Colors.black,
                            ),
                          ), // Arrow Icon
                        ],
                      )), // Notification
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ), // Text
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                              color: Colors.black,
                            ),
                          ), // Arrow Icon
                        ],
                      )), // About Us
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Text(
                              'Contact Us',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ), // Text
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                              color: Colors.black,
                            ),
                          ), // Arrow Icon
                        ],
                      )), // Contact Us
                  SizedBox(
                    height: 15,
                  ),
                  OutlinedButton(
                    onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPageView())),
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.resolveWith(
                                (states) => const Size(300.0, 40.0)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xffECF0F1)),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30.0))))),
                    child: const Text(
                      'Sign Out',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ), // Preferences
          ],
        ), // Profile
      ),
    );
  }
}
