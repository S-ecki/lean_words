import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class SomeModel with _$SomeModel {
  const factory SomeModel({required String name}) = _SomeModel;

  factory SomeModel.fromJson(Map<String, Object?> json) =>
      _$SomeModelFromJson(json);
}
