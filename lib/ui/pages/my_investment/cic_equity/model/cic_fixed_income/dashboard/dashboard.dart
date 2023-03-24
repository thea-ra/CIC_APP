import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard.freezed.dart';
part 'dashboard.g.dart';

@freezed
class ModelDashboard with _$ModelDashboard {
  factory ModelDashboard({
    @JsonKey(name: "total_share_outstanding") final num? totalshareoutstanding,
    @JsonKey(name: "total_net_worth") final num? totalnetworth,
  }) = _ModelDashboard;

  factory ModelDashboard.fromJson(Map<String, dynamic> json) =>
      _$ModelDashboardFromJson(json);
}
