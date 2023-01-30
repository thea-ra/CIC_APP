import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_model.freezed.dart';
part 'graph_model.g.dart';

@freezed
class Synfusion with _$Synfusion {
  factory Synfusion({
    @JsonKey(name: "date") final String? date,
    @JsonKey(name: "month") final String? month,
    @JsonKey(name: "year") final String? year,
    @JsonKey(name: "price") final num? price,
  }) = _Synfusion;

  factory Synfusion.fromJson(Map<String, dynamic> json) =>
      _$SynfusionFromJson(json);
}
