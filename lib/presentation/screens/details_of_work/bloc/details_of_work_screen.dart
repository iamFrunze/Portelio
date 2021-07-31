import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portelio/presentation/screens/details_of_work/mock/mock.dart';

class DetailsOfWorkScreen extends StatefulWidget {
  const DetailsOfWorkScreen({Key? key}) : super(key: key);

  @override
  _DetailsOfWorkScreenState createState() => _DetailsOfWorkScreenState();
}

class _DetailsOfWorkScreenState extends State<DetailsOfWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          MockOfDetails.job.name,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          Container(
            margin: const EdgeInsetsDirectional.only(end: 16),
            child: Icon(Icons.share),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                child: Text(
                  MockOfDetails.job.name,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(MockOfDetails.job.description)),
              Card(
                elevation: 5,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MockOfDetails.job.imageUrl.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(4),
                        child: Image.network(MockOfDetails.job.imageUrl[index]),
                      );
                    },
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "github \n",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "${MockOfDetails.job.gitUrl}")
                  ]),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "App Store \n",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "${MockOfDetails.job.appStoreUrl}")
                  ]),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "Play Market \n",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "${MockOfDetails.job.playMarketUrl}")
                  ]),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
