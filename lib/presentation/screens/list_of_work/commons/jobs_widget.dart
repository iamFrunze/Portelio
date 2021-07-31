import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portelio/data/job.dart';
import 'package:portelio/res/dimensions.dart';
import 'package:portelio/res/images.dart';

class JobsWidget extends StatefulWidget {
  List<Job> job = [];

  JobsWidget({required this.job});

  @override
  _JobsWidgetState createState() => _JobsWidgetState();
}

class _JobsWidgetState extends State<JobsWidget> {
  List<Job> _job = [];

  @override
  void initState() {
    super.initState();
    _job = widget.job;
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            alignment: Alignment.center,
              child: _cardWithJob(_job[index].imageUrl.first, _job[index].name,
                  _job[index].description)),
          childCount: _job.length),
    );
  }
}

Widget _cardWithJob(String imageUrl, String name, String desc) {
  return Card(
    child: ListTile(
      leading: Image.network(imageUrl),
      title: Container(
        child: Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      subtitle: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Text(
          desc,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ),
  );
}
