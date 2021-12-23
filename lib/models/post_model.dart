import 'package:equatable/equatable.dart';

class PostModel extends Equatable {
  int? id;
  String? date;
  late TitleModel titleModel;
  late ImageFuture imageFuture;
  late ContentModel contentModel;

  PostModel(
      this.id, this.date, this.titleModel, this.imageFuture, this.contentModel);
  
  PostModel.fromJson(json) {
    id = json['id'] as int;
    date = json['date'] as String;
    titleModel = TitleModel.formJson(json['title']);
    imageFuture = ImageFuture.fromJson(json['better_featured_image']);
    contentModel = ContentModel.fromJson(json['content']);
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}

class TitleModel extends Equatable {
  String title = '';

  TitleModel(this.title);

  TitleModel.formJson(json) {
    title = json['rendered'] as String;
  }

  @override
  List<Object?> get props => [title];
}

class ImageFuture extends Equatable {
  String sourceUrl = '';

  ImageFuture(this.sourceUrl);

  ImageFuture.fromJson(json) {
    sourceUrl = json['source_url'] as String;
  }

  @override
  List<Object?> get props => [sourceUrl];
}

class ContentModel extends Equatable {
  String content = '';

  ContentModel(this.content);

  ContentModel.fromJson(json) {
    content = json['rendered'] as String;
  }

  @override
  List<Object?> get props => [content];
}
