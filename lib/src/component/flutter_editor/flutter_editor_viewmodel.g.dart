// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_editor_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FlutterEditorViewmodel)
final flutterEditorViewmodelProvider = FlutterEditorViewmodelFamily._();

final class FlutterEditorViewmodelProvider
    extends $NotifierProvider<FlutterEditorViewmodel, FlutterEditorState> {
  FlutterEditorViewmodelProvider._({
    required FlutterEditorViewmodelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'flutterEditorViewmodelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$flutterEditorViewmodelHash();

  @override
  String toString() {
    return r'flutterEditorViewmodelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FlutterEditorViewmodel create() => FlutterEditorViewmodel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FlutterEditorState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FlutterEditorState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FlutterEditorViewmodelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$flutterEditorViewmodelHash() =>
    r'e8a68a250e849bfaf6a23d35251cf3ea0344331b';

final class FlutterEditorViewmodelFamily extends $Family
    with
        $ClassFamilyOverride<
          FlutterEditorViewmodel,
          FlutterEditorState,
          FlutterEditorState,
          FlutterEditorState,
          int
        > {
  FlutterEditorViewmodelFamily._()
    : super(
        retry: null,
        name: r'flutterEditorViewmodelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FlutterEditorViewmodelProvider call(int id) =>
      FlutterEditorViewmodelProvider._(argument: id, from: this);

  @override
  String toString() => r'flutterEditorViewmodelProvider';
}

abstract class _$FlutterEditorViewmodel extends $Notifier<FlutterEditorState> {
  late final _$args = ref.$arg as int;
  int get id => _$args;

  FlutterEditorState build(int id);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<FlutterEditorState, FlutterEditorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FlutterEditorState, FlutterEditorState>,
              FlutterEditorState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
