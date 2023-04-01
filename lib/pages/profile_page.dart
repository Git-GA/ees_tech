import 'package:ees_tech/widgets/profile_page/profile_info_stats.dart';
import 'package:ees_tech/widgets/profile_page/total_progress_stats.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_page/week_stats.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            title: const Text("Профиль"),
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
                  const Center(child: Text("Hi Loral")),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ProfileInfoStats(),
                  SizedBox(height: 20),
                  WeekStats(),
                  SizedBox(height: 20),
                  TotalProgressStats(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
