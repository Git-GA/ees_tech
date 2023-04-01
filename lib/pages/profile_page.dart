import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class _ProfileInfoRow extends StatelessWidget {
  const _ProfileInfoRow({Key? key}) : super(key: key);

  final List<ProfileInfoItem> _items = const [
    ProfileInfoItem("Posts", 900),
    ProfileInfoItem("Followers", 120),
    ProfileInfoItem("Following", 200),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text('Ваши достижения'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              height: 80,
              constraints: const BoxConstraints(maxWidth: 400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _items
                    .map((item) => Expanded(
                            child: Row(
                          children: [
                            if (_items.indexOf(item) != 0)
                              const VerticalDivider(),
                            Expanded(child: _singleItem(context, item)),
                          ],
                        )))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _singleItem(BuildContext context, ProfileInfoItem item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            item.title,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      );
}

class ProfileInfoItem {
  final String title;
  final int value;
  const ProfileInfoItem(this.title, this.value);
}

class _WeekStats extends StatelessWidget {
  const _WeekStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text('Ваши достижения за неделю'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(height: 20),
                    Text("ПН"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.remove_circle),
                    SizedBox(height: 20),
                    Text("ВТ"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(height: 20),
                    Text("СР"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(height: 20),
                    Text("ЧТ"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.remove_circle),
                    SizedBox(height: 20),
                    Text("ПТ"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.remove_circle),
                    SizedBox(height: 20),
                    Text("СБ"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.remove_circle),
                    SizedBox(height: 20),
                    Text("ВС"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "25",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "Текущий стрик",
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "25",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "Лучший стрик",
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _TotalProgressStats extends StatelessWidget {
  const _TotalProgressStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text('Ваши достижения по курсам'),
            ),
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Image.asset("assets/img/default_course_image.png"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Курс по Js"),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              "В процессе ",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: LinearProgressIndicator(
                              value: 0.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Image.asset("assets/img/default_course_image.png"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Курс по Js"),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              "В процессе ",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: LinearProgressIndicator(
                              value: 0.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Image.asset("assets/img/default_course_image.png"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Курс по Js"),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              "В процессе ",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: LinearProgressIndicator(
                              value: 0.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Divider(),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                title: Center(child: const Text("Показать все")),
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                  _ProfileInfoRow(),
                  SizedBox(height: 20),
                  _WeekStats(),
                  SizedBox(height: 20),
                  _TotalProgressStats(),
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
