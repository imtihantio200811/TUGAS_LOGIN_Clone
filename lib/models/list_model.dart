// To parse this JSON data, do
//
//     final listModels = listModelsFromJson(jsonString);

import 'dart:convert';

List<ListModels> listModelsFromJson(String str) => List<ListModels>.from(json.decode(str).map((x) => ListModels.fromJson(x)));

String listModelsToJson(List<ListModels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListModels {
    final int albumId;
    final int id;
    final String title;
    final String url;
    final String thumbnailUrl;
    
    ListModels({
        required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl,
    });

    factory ListModels.fromJson(Map<String, dynamic> json) => ListModels(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };
}
