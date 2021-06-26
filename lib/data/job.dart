// import 'dart:convert';
import 'dart:convert';
import 'dart:ui';

import 'package:collection/collection.dart';

class Job {
  List<String> imageUrl = [];
  String name = "";
  String description = "";
  String gitUrl = "";
  String appStoreUrl = "";
  String playMarketUrl = "";
  Job({
    this.imageUrl = const [],
    this.name = '',
    this.description = '',
    this.gitUrl = '',
    this.appStoreUrl = '',
    this.playMarketUrl = '',
  });

  Job copyWith({
    List<String>? imageUrl,
    String? name,
    String? description,
    String? gitUrl,
    String? appStoreUrl,
    String? playMarketUrl,
  }) {
    return Job(
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      description: description ?? this.description,
      gitUrl: gitUrl ?? this.gitUrl,
      appStoreUrl: appStoreUrl ?? this.appStoreUrl,
      playMarketUrl: playMarketUrl ?? this.playMarketUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'name': name,
      'description': description,
      'gitUrl': gitUrl,
      'appStoreUrl': appStoreUrl,
      'playMarketUrl': playMarketUrl,
    };
  }

  factory Job.fromMap(Map<String, dynamic> map) {
    return Job(
      imageUrl: List<String>.from(map['imageUrl']),
      name: map['name'],
      description: map['description'],
      gitUrl: map['gitUrl'],
      appStoreUrl: map['appStoreUrl'],
      playMarketUrl: map['playMarketUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Job.fromJson(String source) => Job.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Job(imageUrl: $imageUrl, name: $name, description: $description, gitUrl: $gitUrl, appStoreUrl: $appStoreUrl, playMarketUrl: $playMarketUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Job &&
        listEquals(other.imageUrl, imageUrl) &&
        other.name == name &&
        other.description == description &&
        other.gitUrl == gitUrl &&
        other.appStoreUrl == appStoreUrl &&
        other.playMarketUrl == playMarketUrl;
  }

  @override
  int get hashCode {
    return hashList([
      imageUrl,
      name,
      description,
      gitUrl,
      appStoreUrl,
      playMarketUrl,
    ]);
  }
}
