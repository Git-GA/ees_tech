import 'package:ees_tech/controllers/user.dart';
import 'package:ees_tech/i18n/en_US/strings.g.dart';
import 'package:ees_tech/widgets/profile_page/profile_info_stats.dart';
import 'package:ees_tech/widgets/profile_page/total_progress_stats.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/profile_page/week_stats.dart';

class ProfilePage extends GetView<UserController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.navbar.profile),
                IconButton(
                    onPressed: () {
                      context.push("/profile/settings");
                    },
                    icon: Icon(Icons.settings)),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.2,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child:
                          Image.asset("assets/img/default_profile_image.png"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child:
                          Obx(() => Text("Hi ${controller.userName.value}"))),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              children: [
                ProfileInfoStats(),
                WeekStats(),
                TotalProgressStats(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
