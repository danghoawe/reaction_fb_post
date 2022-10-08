import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:get/get.dart';
import 'package:reaction_fb_post/home/controller.dart';
import 'package:reaction_fb_post/home/second_page.dart';
import 'package:reaction_fb_post/widget.dart';

class Home extends StatelessWidget {
  Home({super.key});
  HomeController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: homeUI(context),
      ),
    );
  }

  homeUI(context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage(c.userData["picture"]["data"]["url"]),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      child: Text(
                        c.userData["name"],
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Full stack Developer',
                        style: TextStyle(
                            color: Colors.blueGrey[400],
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Divider(
              thickness: 1,
              color: Colors.blueGrey[200],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        '203',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Followers',
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        '932',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Following',
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        '30',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Projects',
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Divider(
              thickness: 1,
              color: Colors.blueGrey[200],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Top Skills',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                          child: Text(
                        'Flutter',
                        style: TextStyle(color: Colors.blueGrey),
                      )),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                          child: Text(
                        'React JS',
                        style: TextStyle(color: Colors.blueGrey),
                      )),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                          child: Text(
                        'Node js',
                        style: TextStyle(color: Colors.blueGrey),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                          child: Text(
                        'Django',
                        style: TextStyle(color: Colors.blueGrey),
                      )),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                          child: Text(
                        'Laravel',
                        style: TextStyle(color: Colors.blueGrey),
                      )),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                          child: Text(
                        'Express JS',
                        style: TextStyle(color: Colors.blueGrey),
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Your Posts',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Obx(
            () => ListView.builder(
              shrinkWrap: true,
              itemCount: c.postsData.length,
              itemBuilder: (BuildContext context, int index) {
                return PostWidget(c.postsData[index]);
              },
            ),
          ))
        ],
      ),
    );
  }
}
