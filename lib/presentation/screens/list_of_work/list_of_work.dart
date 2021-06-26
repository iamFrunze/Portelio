import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portelio/data/job.dart';
import 'package:portelio/presentation/screens/list_of_work/commons/jobs_widget.dart';
import 'package:portelio/presentation/screens/list_of_work/mockJob.dart';
import 'package:portelio/res/dimensions.dart';
import 'package:portelio/res/images.dart';
import 'package:portelio/res/jobs_res/jobs_strings.dart';

class ListOfWorkScreen extends StatefulWidget {
  @override
  _ListOfWorkScreenState createState() => _ListOfWorkScreenState();
}

class _ListOfWorkScreenState extends State<ListOfWorkScreen> {
  List<Job> jobs = [
    MockJob.job1,
    MockJob.job2,
    MockJob.job3,
    MockJob.job4,
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(
                        CupertinoIcons.add,
                        size: 24,
                      ),
                    ),
                    Container(
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
                CupertinoSearchTextField(),
                Container(
                    child: JobsWidget(
                        title: JobsStrings.label_all_jobs, job: jobs)),
                Container(
                    child: JobsWidget(
                        title: JobsStrings.label_favourite_jobs, job: jobs)),
                Container(
                    child: JobsWidget(
                        title: JobsStrings.label_favourite_jobs, job: jobs))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
