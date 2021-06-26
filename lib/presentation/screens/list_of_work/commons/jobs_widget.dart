import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portelio/data/job.dart';
import 'package:portelio/res/dimensions.dart';
import 'package:portelio/res/images.dart';

class JobsWidget extends StatefulWidget {
  String title = "Unknown";
  List<Job> job = [];
  JobsWidget({required this.title, required this.job});
  @override
  _JobsWidgetState createState() => _JobsWidgetState();
}

class _JobsWidgetState extends State<JobsWidget> {
  String _title = "Unknown";
  List<Job> _job = [];

  @override
  void initState() {
    super.initState();
    _title = widget.title;
    _job = widget.job;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin:
              const EdgeInsets.symmetric(vertical: CustomDimensions.def_margin),
          child: Text(
            _title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: _job.length,
              itemBuilder: (BuildContext context, int index) {
                return _cardWithJob(_job[index].imageUrl.first,
                    _job[index].name, _job[index].description);
              }),
        ),
      ],
    );
  }
}

Widget _cardWithJob(String imageUrl, String name, String desc) {
  return Card(
    child: Row(
      children: [
        Container(width: 84, child: Image.network(imageUrl)),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    desc,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
