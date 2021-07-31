import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portelio/data/job.dart';
import 'package:portelio/presentation/screens/list_of_work/commons/jobs_widget.dart';
import 'package:portelio/presentation/screens/list_of_work/mock/mock_job.dart';
import 'package:portelio/presentation/screens/list_of_work/mock/mock_user.dart';
import 'package:portelio/res/list_of_work_res/list_of_work_strings.dart';
import 'package:portelio/res/dimensions.dart';
import 'dart:math' as math;

import 'package:portelio/res/images.dart';

class ListOfWorkScreen extends StatefulWidget {
  @override
  _ListOfWorkScreenState createState() => _ListOfWorkScreenState();
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class _ListOfWorkScreenState extends State<ListOfWorkScreen> {
  List<Job> jobs = [
    MockJob.job1,
    MockJob.job1,
    MockJob.job2,
    MockJob.job3,
    MockJob.job4,
    MockJob.job4,
    MockJob.job4,
    MockJob.job4,
  ];

  var currentTag = ListOfWorkStrings.all;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
      child: Container(
        child: CustomScrollView(
          physics: ScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 10,
              expandedHeight: 200,
              backgroundColor: Colors.amber,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  MockUser.user.appBarImage,
                  fit: BoxFit.fill,
                ),
              ),
              title: Text("Portelio"),
              leading: Icon(
                CupertinoIcons.add,
                size: 24,
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.deepPurple,
                    child: ClipRRect(
                      child: Image.network(
                        CustomImages.avatarPlaceholder,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Column(children: [
                  CupertinoSearchTextField(),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                currentTag = ListOfWorkStrings.all;
                              });
                            },
                            child: Text(
                              ListOfWorkStrings.all,
                            ),
                            style: currentTag == ListOfWorkStrings.all
                                ? TextButton.styleFrom(primary: Colors.amber)
                                : TextButton.styleFrom()),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                currentTag = ListOfWorkStrings.ios;
                              });
                            },
                            child: Text(ListOfWorkStrings.ios),
                            style: currentTag == ListOfWorkStrings.ios
                                ? TextButton.styleFrom(primary: Colors.amber)
                                : TextButton.styleFrom()),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                currentTag = ListOfWorkStrings.android;
                              });
                            },
                            child: Text(ListOfWorkStrings.android),
                            style: currentTag == ListOfWorkStrings.android
                                ? TextButton.styleFrom(primary: Colors.amber)
                                : TextButton.styleFrom()),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                currentTag = ListOfWorkStrings.flutter;
                              });
                            },
                            child: Text(ListOfWorkStrings.flutter),
                            style: currentTag == ListOfWorkStrings.flutter
                                ? TextButton.styleFrom(primary: Colors.amber)
                                : TextButton.styleFrom()),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                currentTag = ListOfWorkStrings.kmm;
                              });
                            },
                            child: Text(ListOfWorkStrings.kmm),
                            style: currentTag == ListOfWorkStrings.kmm
                                ? TextButton.styleFrom(primary: Colors.amber)
                                : TextButton.styleFrom()),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            JobsWidget(job: jobs)
          ],
        ),
      ),
    ));
  }
}
