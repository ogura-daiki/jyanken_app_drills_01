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
    required ProjectId super.argument,
  }) : super(
         retry: null,
         name: r'flutterEditorViewmodelProvider',
         isAutoDispose: false,
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
    r'51892c582b534695cb1f88ed03cc03410589a841';

final class FlutterEditorViewmodelFamily extends $Family
    with
        $ClassFamilyOverride<
          FlutterEditorViewmodel,
          FlutterEditorState,
          FlutterEditorState,
          FlutterEditorState,
          ProjectId
        > {
  FlutterEditorViewmodelFamily._()
    : super(
        retry: null,
        name: r'flutterEditorViewmodelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  FlutterEditorViewmodelProvider call(ProjectId id) =>
      FlutterEditorViewmodelProvider._(argument: id, from: this);

  @override
  String toString() => r'flutterEditorViewmodelProvider';
}

abstract class _$FlutterEditorViewmodel extends $Notifier<FlutterEditorState> {
  late final _$args = ref.$arg as ProjectId;
  ProjectId get id => _$args;

  FlutterEditorState build(ProjectId id);
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
