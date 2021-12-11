// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workshop/core/extension/string_extensions.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarTextStyle: Theme.of(context).textTheme.headline6,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ],
        ),
        title: Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      child: Image.asset('avatar_big'.toPNG),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Andrea Hirata'),
                      subtitle: Text('hirata@gmail.com'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Divider(
              height: 0,
              color: Color(0xff7F7F7F),
            ),
            Container(
              height: 58,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'General',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Color(0xff7F7F7F)),
              ),
            ),
            Container(
              height: 51,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Edit Profile'),
            ),
            Divider(
              height: 0,
              color: Color(0xff7F7F7F),
            ),
            Container(
              height: 51,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Notifications'),
            ),
            Divider(
              height: 0,
              color: Color(0xff7F7F7F),
            ),
            Container(
              height: 51,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Whishlist'),
            ),
            Divider(
              height: 0,
              color: Color(0xff7F7F7F),
            ),
            Container(
              height: 58,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Legal',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Color(0xff7F7F7F)),
              ),
            ),
            Container(
              height: 51,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Terms of Use'),
            ),
            Divider(
              height: 0,
              color: Color(0xff7F7F7F),
            ),
            Container(
              height: 51,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Privacy Policy'),
            ),
            Divider(
              height: 0,
              color: Color(0xff7F7F7F),
            ),
            Container(
              height: 58,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Personal',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Color(0xff7F7F7F)),
              ),
            ),
            Container(
              height: 51,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Report a Bug'),
            ),
            Divider(
              height: 0,
              color: Color(0xff7F7F7F),
            ),
            Container(
              height: 51,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Logout'),
            ),
            Divider(
              height: 0,
              color: Color(0xff7F7F7F),
            ),
          ],
        ),
      ),
    );
  }
}
