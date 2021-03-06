import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'global.g.dart';

@immutable
@JsonSerializable()
class GlobalState {
  static const String STATE_KEY = 'global';

  // Ignore loading (Do not persist)
  @JsonKey(ignore: true)
  final int loading;

  GlobalState({this.loading = 0});

  // allows us to modify GlobalState parameters while cloning previous ones
  GlobalState copyWith({int loading}) {
    return GlobalState(
      loading: loading ?? this.loading,
    );
  }

  factory GlobalState.fromJson(Map<String, dynamic> json) => _$GlobalStateFromJson(json);

  Map<String, dynamic> toJson() => _$GlobalStateToJson(this);

  @override
  String toString() {
    return '{loading: $loading}';
  }
}
