import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo.freezed.dart';
part 'geo.g.dart';

@freezed
class Geo with _$Geo {
  factory Geo({
    // ignore: invalid_annotation_target
    @JsonKey(name: "lat") final int? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: "lng") final String? name,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}
