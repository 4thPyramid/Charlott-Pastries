import 'package:json_annotation/json_annotation.dart';

part 'stats_response.g.dart';

@JsonSerializable()
class StatsResponse {
  final int prepared;
  final int rejected;
  final int delivered;
  final int returned;
  final int recive;
  
  @JsonKey(name: 'percentage')
  final String percentageString;

  double get percentage {
    return double.tryParse(percentageString.replaceAll('%', '')) ?? 0.0;
  }

  StatsResponse({
    required this.prepared,
    required this.rejected,
    required this.delivered,
    required this.returned,
    required this.recive,
    required this.percentageString,
  });

  factory StatsResponse.fromJson(Map<String, dynamic> json) =>
      _$StatsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatsResponseToJson(this);
}