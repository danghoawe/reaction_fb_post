import 'dart:convert';

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:reaction_fb_post/home/home.dart';
import 'package:http/http.dart' as http;
import 'package:reaction_fb_post/model/post.dart';
import 'package:reaction_fb_post/model/post_data.dart';

enum Status { none, running, stopped, paused }

class HomeController extends GetxController {
  var status = 0.obs;
  var count = 0.obs;
  increment() => count++;
  decrement() => count--;
  List<Post> posts = [];
  RxList postsData = [].obs;
  var userData = Map<String, dynamic>();
  var statusCurrent = 0.obs;
  late AccessToken accessToken;
  loginFB() async {
    status.value = 1;
    final LoginResult result = await FacebookAuth.instance.login(permissions: [
      "user_posts",
    ]); // by default we request the email and the public profile
// or FacebookAuth.i.login()
    if (result.status == LoginStatus.success) {
      print("login");
      // you are logged
      statusCurrent = 1.obs;
      accessToken = result.accessToken!;
      userData = await FacebookAuth.instance.getUserData();
      final graphResponse = await http.get(Uri.parse(
          'https://graph.facebook.com/me?fields=posts&access_token=${accessToken.token}'));
      var body = json.decode(graphResponse.body);

      Iterable l = body["posts"]["data"];
      //getlist post
      posts = List<Post>.from(l.map((model) => Post.fromJson(model)));
      //get list data post

      for (var element in posts) {
        {
          if (element.message != "") {
            postsData.add(await getPostData(element));
          }
        }
      }
      posts.forEach((element) async {});
      status.value = 0;

      Get.to(Home());
    } else {
      print(result.status);
      print(result.message);
      status.value = 0;
    }
  }

  Future<PostData> getPostData(Post post) async {
    String uid = userData["id"];
    String likes = "";
    String comments = "";
    String shares = "";

    final graphResponse = await http.get(Uri.parse(
        'https://graph.facebook.com/${post.id}?fields=reactions.summary(total_count),comments.summary(total_count)&access_token=${accessToken.token}'));
    var body = json.decode(graphResponse.body);

    likes = body["reactions"]["summary"]["total_count"].toString();
    comments = body["comments"]["summary"]["total_count"].toString();

    PostData postData = PostData(
        userData["picture"]["data"]["url"],
        userData["name"],
        post.created_time,
        post.message,
        likes,
        comments,
        shares);
    return postData;
  }
}
