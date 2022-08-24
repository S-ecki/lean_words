import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class Model {
  const factory Model({required String name}) = _Model;

  factory Model.fromJson(Map<String, Object?> json) => _$ModelFromJson(json);
}
