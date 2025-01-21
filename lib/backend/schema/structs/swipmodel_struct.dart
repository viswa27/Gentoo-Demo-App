// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SwipmodelStruct extends FFFirebaseStruct {
  SwipmodelStruct({
    String? image,
    String? name,
    String? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _name = name,
        _price = price,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  static SwipmodelStruct fromMap(Map<String, dynamic> data) => SwipmodelStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        price: data['price'] as String?,
      );

  static SwipmodelStruct? maybeFromMap(dynamic data) => data is Map
      ? SwipmodelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static SwipmodelStruct fromSerializableMap(Map<String, dynamic> data) =>
      SwipmodelStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SwipmodelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SwipmodelStruct &&
        image == other.image &&
        name == other.name &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([image, name, price]);
}

SwipmodelStruct createSwipmodelStruct({
  String? image,
  String? name,
  String? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SwipmodelStruct(
      image: image,
      name: name,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SwipmodelStruct? updateSwipmodelStruct(
  SwipmodelStruct? swipmodel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    swipmodel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSwipmodelStructData(
  Map<String, dynamic> firestoreData,
  SwipmodelStruct? swipmodel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (swipmodel == null) {
    return;
  }
  if (swipmodel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && swipmodel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final swipmodelData = getSwipmodelFirestoreData(swipmodel, forFieldValue);
  final nestedData = swipmodelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = swipmodel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSwipmodelFirestoreData(
  SwipmodelStruct? swipmodel, [
  bool forFieldValue = false,
]) {
  if (swipmodel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(swipmodel.toMap());

  // Add any Firestore field values
  swipmodel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSwipmodelListFirestoreData(
  List<SwipmodelStruct>? swipmodels,
) =>
    swipmodels?.map((e) => getSwipmodelFirestoreData(e, true)).toList() ?? [];
