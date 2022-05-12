// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerHome on _HomeController, Store {
  late final _$gettingDataAtom =
      Atom(name: '_HomeController.gettingData', context: context);

  @override
  bool get gettingData {
    _$gettingDataAtom.reportRead();
    return super.gettingData;
  }

  @override
  set gettingData(bool value) {
    _$gettingDataAtom.reportWrite(value, super.gettingData, () {
      super.gettingData = value;
    });
  }

  late final _$hasErrorAtom =
      Atom(name: '_HomeController.hasError', context: context);

  @override
  bool get hasError {
    _$hasErrorAtom.reportRead();
    return super.hasError;
  }

  @override
  set hasError(bool value) {
    _$hasErrorAtom.reportWrite(value, super.hasError, () {
      super.hasError = value;
    });
  }

  late final _$getPersonInfosAsyncAction =
      AsyncAction('_HomeController.getPersonInfos', context: context);

  @override
  Future<void> getPersonInfos() {
    return _$getPersonInfosAsyncAction.run(() => super.getPersonInfos());
  }

  @override
  String toString() {
    return '''
gettingData: ${gettingData},
hasError: ${hasError}
    ''';
  }
}
