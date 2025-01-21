// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LoginModelStruct extends FFFirebaseStruct {
  LoginModelStruct({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? password,
    String? phoneNumber,
    String? address1,
    String? street,
    String? country,
    String? city,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstName = firstName,
        _lastName = lastName,
        _emailAddress = emailAddress,
        _password = password,
        _phoneNumber = phoneNumber,
        _address1 = address1,
        _street = street,
        _country = country,
        _city = city,
        super(firestoreUtilData);

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  set emailAddress(String? val) => _emailAddress = val;

  bool hasEmailAddress() => _emailAddress != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "Address1" field.
  String? _address1;
  String get address1 => _address1 ?? '';
  set address1(String? val) => _address1 = val;

  bool hasAddress1() => _address1 != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  set street(String? val) => _street = val;

  bool hasStreet() => _street != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? 'UAE';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  static LoginModelStruct fromMap(Map<String, dynamic> data) =>
      LoginModelStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        emailAddress: data['emailAddress'] as String?,
        password: data['password'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        address1: data['Address1'] as String?,
        street: data['street'] as String?,
        country: data['Country'] as String?,
        city: data['City'] as String?,
      );

  static LoginModelStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'emailAddress': _emailAddress,
        'password': _password,
        'phoneNumber': _phoneNumber,
        'Address1': _address1,
        'street': _street,
        'Country': _country,
        'City': _city,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'emailAddress': serializeParam(
          _emailAddress,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'Address1': serializeParam(
          _address1,
          ParamType.String,
        ),
        'street': serializeParam(
          _street,
          ParamType.String,
        ),
        'Country': serializeParam(
          _country,
          ParamType.String,
        ),
        'City': serializeParam(
          _city,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoginModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginModelStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        emailAddress: deserializeParam(
          data['emailAddress'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        address1: deserializeParam(
          data['Address1'],
          ParamType.String,
          false,
        ),
        street: deserializeParam(
          data['street'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['Country'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['City'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoginModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginModelStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        emailAddress == other.emailAddress &&
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        address1 == other.address1 &&
        street == other.street &&
        country == other.country &&
        city == other.city;
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstName,
        lastName,
        emailAddress,
        password,
        phoneNumber,
        address1,
        street,
        country,
        city
      ]);
}

LoginModelStruct createLoginModelStruct({
  String? firstName,
  String? lastName,
  String? emailAddress,
  String? password,
  String? phoneNumber,
  String? address1,
  String? street,
  String? country,
  String? city,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LoginModelStruct(
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      password: password,
      phoneNumber: phoneNumber,
      address1: address1,
      street: street,
      country: country,
      city: city,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LoginModelStruct? updateLoginModelStruct(
  LoginModelStruct? loginModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    loginModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLoginModelStructData(
  Map<String, dynamic> firestoreData,
  LoginModelStruct? loginModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (loginModel == null) {
    return;
  }
  if (loginModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && loginModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final loginModelData = getLoginModelFirestoreData(loginModel, forFieldValue);
  final nestedData = loginModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = loginModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLoginModelFirestoreData(
  LoginModelStruct? loginModel, [
  bool forFieldValue = false,
]) {
  if (loginModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(loginModel.toMap());

  // Add any Firestore field values
  loginModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLoginModelListFirestoreData(
  List<LoginModelStruct>? loginModels,
) =>
    loginModels?.map((e) => getLoginModelFirestoreData(e, true)).toList() ?? [];
