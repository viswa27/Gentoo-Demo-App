// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SearchmodelStruct extends FFFirebaseStruct {
  SearchmodelStruct({
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static SearchmodelStruct fromMap(Map<String, dynamic> data) =>
      SearchmodelStruct(
        name: data['name'] as String?,
      );

  static SearchmodelStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchmodelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static SearchmodelStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchmodelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SearchmodelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchmodelStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

SearchmodelStruct createSearchmodelStruct({
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchmodelStruct(
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchmodelStruct? updateSearchmodelStruct(
  SearchmodelStruct? searchmodel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchmodel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchmodelStructData(
  Map<String, dynamic> firestoreData,
  SearchmodelStruct? searchmodel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchmodel == null) {
    return;
  }
  if (searchmodel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && searchmodel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchmodelData =
      getSearchmodelFirestoreData(searchmodel, forFieldValue);
  final nestedData =
      searchmodelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = searchmodel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchmodelFirestoreData(
  SearchmodelStruct? searchmodel, [
  bool forFieldValue = false,
]) {
  if (searchmodel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchmodel.toMap());

  // Add any Firestore field values
  searchmodel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchmodelListFirestoreData(
  List<SearchmodelStruct>? searchmodels,
) =>
    searchmodels?.map((e) => getSearchmodelFirestoreData(e, true)).toList() ??
    [];
