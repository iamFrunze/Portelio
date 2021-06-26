import 'package:portelio/data/job.dart';

class MockJob {
  static Job job1 = Job(
      imageUrl: [
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg",
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg",
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg"
      ],
      name: "Job1",
      description:
          " I don't think you're really gaining much benefit by using mocks for testing your queries. Testing should be testing the logic of the code, not the ",
      gitUrl: "git job 1",
      appStoreUrl: "app job 1",
      playMarketUrl: "pm job 1");

  static Job job2 = Job(
      imageUrl: [
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg",
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg",
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg"
      ],
      name:
          " I don't think you're really gaining much benefit by using mocks for testing your queries. Testing should be testing the logic of the code, not the ",
      description: "Desc job 2",
      gitUrl: "git job 2",
      appStoreUrl: "app job 2",
      playMarketUrl: "pm job 2");

  static Job job3 = Job(
      imageUrl: [
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg",
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg",
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg"
      ],
      name: "Job3",
      description:
          "Desc job 3пппрпаропор рп ро поп ро ррпроп прпрп рпорпорп рпп",
      gitUrl: "git job 3",
      appStoreUrl: "app job 3",
      playMarketUrl: "pm job 3");

  static Job job4 = Job(
      imageUrl: [
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg",
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg",
        "https://dz2cdn2.dzone.com/storage/article-thumb/13471345-thumb.jpg"
      ],
      name: "Job4",
      description: "Desc job 4",
      gitUrl: "git job 4",
      appStoreUrl: "app job 4",
      playMarketUrl: "pm job 4");
}
