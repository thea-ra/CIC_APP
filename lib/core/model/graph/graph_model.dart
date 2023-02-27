import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_model.freezed.dart';
part 'graph_model.g.dart';

@freezed
class Synfusion with _$Synfusion {
  factory Synfusion({
    // ignore: invalid_annotation_target
    @JsonKey(name: "date") final String? date,
    // ignore: invalid_annotation_target
    @JsonKey(name: "month") final String? month,
    // ignore: invalid_annotation_target
    @JsonKey(name: "year") final String? year,
    // ignore: invalid_annotation_target
    @JsonKey(name: "price") final num? price,
  }) = _Synfusion;

  factory Synfusion.fromJson(Map<String, dynamic> json) =>
      _$SynfusionFromJson(json);
}
