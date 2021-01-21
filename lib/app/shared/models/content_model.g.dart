// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentModel _$ContentModelFromJson(Map<String, dynamic> json) {
  return ContentModel()
    ..imageUrl = json['image_url'] as String
    ..contentType = json['content_type'] as String
    ..link = json['link'] as String
    ..title = json['title'] as String;
}

Map<String, dynamic> _$ContentModelToJson(ContentModel instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'content_type': instance.contentType,
      'link': instance.link,
      'title': instance.title,
    };

ContentModelList _$ContentModelListFromJson(Map<String, dynamic> json) {
  return ContentModelList()
    ..data = (json['data'] as List)
        ?.map((e) =>
            e == null ? null : ContentModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ContentModelListToJson(ContentModelList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
