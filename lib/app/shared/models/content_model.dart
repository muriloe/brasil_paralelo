import 'package:json_annotation/json_annotation.dart';

part 'content_model.g.dart';

@JsonSerializable()
class ContentModel {
  @JsonKey(name: "image_url")
  String imageUrl;
  @JsonKey(name: "content_type")
  String contentType;
  @JsonKey(name: "link")
  String link;
  @JsonKey(name: "title")
  String title;

  ContentModel();

  factory ContentModel.fromJson(Map<String, dynamic> json) => _$ContentModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContentModelToJson(this);
}

@JsonSerializable()
class ContentModelList {
  @JsonKey(name: "data")
  List<ContentModel> data;
  ContentModelList();

  factory ContentModelList.fromJson(Map<String, dynamic> json) => _$ContentModelListFromJson(json);

  Map<String, dynamic> toJson() => _$ContentModelListToJson(this);
}
