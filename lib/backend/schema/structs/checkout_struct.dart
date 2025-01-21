// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CheckoutStruct extends FFFirebaseStruct {
  CheckoutStruct({
    int? id,
    String? image,
    String? name,
    String? number,
    int? isselected,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _image = image,
        _name = name,
        _number = number,
        _isselected = isselected,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  // "isselected" field.
  int? _isselected;
  int get isselected => _isselected ?? 0;
  set isselected(int? val) => _isselected = val;

  void incrementIsselected(int amount) => isselected = isselected + amount;

  bool hasIsselected() => _isselected != null;

  static CheckoutStruct fromMap(Map<String, dynamic> data) => CheckoutStruct(
        id: castToType<int>(data['id']),
        image: data['image'] as String?,
        name: data['name'] as String?,
        number: data['number'] as String?,
        isselected: castToType<int>(data['isselected']),
      );

  static CheckoutStruct? maybeFromMap(dynamic data) =>
      data is Map ? CheckoutStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'image': _image,
        'name': _name,
        'number': _number,
        'isselected': _isselected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'isselected': serializeParam(
          _isselected,
          ParamType.int,
        ),
      }.withoutNulls;

  static CheckoutStruct fromSerializableMap(Map<String, dynamic> data) =>
      CheckoutStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
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
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        isselected: deserializeParam(
          data['isselected'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CheckoutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CheckoutStruct &&
        id == other.id &&
        image == other.image &&
        name == other.name &&
        number == other.number &&
        isselected == other.isselected;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, image, name, number, isselected]);
}

CheckoutStruct createCheckoutStruct({
  int? id,
  String? image,
  String? name,
  String? number,
  int? isselected,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CheckoutStruct(
      id: id,
      image: image,
      name: name,
      number: number,
      isselected: isselected,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CheckoutStruct? updateCheckoutStruct(
  CheckoutStruct? checkout, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    checkout
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCheckoutStructData(
  Map<String, dynamic> firestoreData,
  CheckoutStruct? checkout,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (checkout == null) {
    return;
  }
  if (checkout.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && checkout.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final checkoutData = getCheckoutFirestoreData(checkout, forFieldValue);
  final nestedData = checkoutData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = checkout.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCheckoutFirestoreData(
  CheckoutStruct? checkout, [
  bool forFieldValue = false,
]) {
  if (checkout == null) {
    return {};
  }
  final firestoreData = mapToFirestore(checkout.toMap());

  // Add any Firestore field values
  checkout.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCheckoutListFirestoreData(
  List<CheckoutStruct>? checkouts,
) =>
    checkouts?.map((e) => getCheckoutFirestoreData(e, true)).toList() ?? [];
