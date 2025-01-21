import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cateList = prefs
              .getStringList('ff_cateList')
              ?.map((x) {
                try {
                  return CategformodelStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cateList;
    });
    _safeInit(() {
      _isIntro = prefs.getBool('ff_isIntro') ?? _isIntro;
    });
    _safeInit(() {
      _islogin = prefs.getBool('ff_islogin') ?? _islogin;
    });
    _safeInit(() {
      _firstName = prefs.getString('ff_firstName') ?? _firstName;
    });
    _safeInit(() {
      _lastName = prefs.getString('ff_lastName') ?? _lastName;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _bottomIndex = prefs.getInt('ff_bottomIndex') ?? _bottomIndex;
    });
    _safeInit(() {
      _address = prefs.getString('ff_address') ?? _address;
    });
    _safeInit(() {
      _homeIndex = prefs.getInt('ff_homeIndex') ?? _homeIndex;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userModel')) {
        try {
          final serializedData = prefs.getString('ff_userModel') ?? '{}';
          _userModel =
              LoginModelStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<NotificationStruct> _notification = [
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"It is a long established fact that reader.\",\"time\":\"Just now\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Distracted by the readable content.\",\"time\":\"1 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"The point of using Lorem Ipsum is that.\",\"time\":\"2 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Making it look like readable jacks sport\",\"time\":\"4 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Many desktop  publishing package web.\",\"time\":\"10 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Publishing packages and web editors.\",\"time\":\"20 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Various versions have evolved over\",\"time\":\"30 Min \"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Sometimes on purpose injecte humour. \",\"time\":\"40 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Versions have evolved over the years.\",\"time\":\"50 Min\"}'))
  ];
  List<NotificationStruct> get notification => _notification;
  set notification(List<NotificationStruct> value) {
    _notification = value;
  }

  void addToNotification(NotificationStruct value) {
    notification.add(value);
  }

  void removeFromNotification(NotificationStruct value) {
    notification.remove(value);
  }

  void removeAtIndexFromNotification(int index) {
    notification.removeAt(index);
  }

  void updateNotificationAtIndex(
    int index,
    NotificationStruct Function(NotificationStruct) updateFn,
  ) {
    notification[index] = updateFn(_notification[index]);
  }

  void insertAtIndexInNotification(int index, NotificationStruct value) {
    notification.insert(index, value);
  }

  List<CategoriesStruct> _categories = [
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/kygcadfwjxin/cate1.png\",\"title\":\"Fruits\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/q3gzmgil4wom/cat2.png\",\"title\":\"Vegetable\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/6ilrdwnwnw83/cate3.png\",\"title\":\"Icecream\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/5joglu9qp5cg/cate4.png\",\"title\":\"Groomer\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/qsjem7mm0afo/cate5.png\",\"title\":\"Electronics\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/6v13c4n459mu/cate6.png\",\"title\":\"Beauty\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/jwy23wkdg74i/cate7.png\",\"title\":\"Cleaning\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ywascuhhn2m6/cate8.png\",\"title\":\"Kitchen\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/tv9xa283gf8m/cate9.png\",\"title\":\"Toys\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/3eusv60230k6/cate10.png\",\"title\":\"Hygiene\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/907wogkdfp0b/cate11.png\",\"title\":\"Snacks\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/z0bbncb54bgq/cate12.png\",\"title\":\"Beverages\"}'))
  ];
  List<CategoriesStruct> get categories => _categories;
  set categories(List<CategoriesStruct> value) {
    _categories = value;
  }

  void addToCategories(CategoriesStruct value) {
    categories.add(value);
  }

  void removeFromCategories(CategoriesStruct value) {
    categories.remove(value);
  }

  void removeAtIndexFromCategories(int index) {
    categories.removeAt(index);
  }

  void updateCategoriesAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    categories[index] = updateFn(_categories[index]);
  }

  void insertAtIndexInCategories(int index, CategoriesStruct value) {
    categories.insert(index, value);
  }

  List<CategformodelStruct> _cateList = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/0vr560adumq0/fruit1.png\",\"name\":\"Banana\",\"price\":\"AED 10.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/j6ozi4unx73y/fruit2.png\",\"name\":\"Apple\",\"price\":\"AED 16.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/yzkxi1rpdu6b/fruit3.png\",\"name\":\"Pineapple mung \",\"price\":\"AED 20.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/aspxwdtwwsuv/fruit4.png\",\"name\":\"Guava\",\"price\":\"AED 24.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/a2wrux2g67jh/fruit5.png\",\"name\":\"Grape\",\"price\":\"AED 22.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/v2hk2da6qoji/fruit6.png\",\"name\":\"Blueberry\",\"price\":\"AED 16.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ak8ek9a68lzl/fruit7.png\",\"name\":\"Peach\",\"price\":\"AED 10.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/xkx8vkb613gq/fruit8.png\",\"name\":\"Kiwi\",\"price\":\"AED 16.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ivul4oa04uk2/veg1.png\",\"name\":\"Cabage\",\"price\":\"AED 10.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"9\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/uhv6mfkgyljl/veg2.png\",\"name\":\"Kukumber\",\"price\":\"AED 16.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"10\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/wvkwtv2edxx7/veg3.png\",\"name\":\"Tommato\",\"price\":\"AED 20.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"11\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/gdi3gc5lkm5n/veg4.png\",\"name\":\"Spinch\",\"price\":\"AED 24.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"12\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/eahdwm0gx4xe/veg5.png\",\"name\":\"Martha\",\"price\":\"AED 22.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"13\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/sqpjoupr4jm6/veg6.png\",\"name\":\"White radish\",\"price\":\"AED 16.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"14\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/vz9kc0ls8ke4/veg7.png\",\"name\":\"Wangoo\",\"price\":\"AED 10.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"15\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/i3o7v2udyhd2/veg8.png\",\"name\":\"Broccoli\",\"price\":\"AED 16.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"16\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/tnu7fis5pew9/deo1.png\",\"name\":\"Sanex tube\",\"price\":\"AED 16.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"17\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/57nltsuiisn5/deo2.png\",\"name\":\"Organic decorate\",\"price\":\"AED 17.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"18\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/rnwtsmtdpo63/deo3.png\",\"name\":\"Dove shampoo\",\"price\":\"AED 10.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"19\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/dsb96yw1p9jb/deo4.png\",\"name\":\"Organic Stick\",\"price\":\"AED 16.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"20\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/dpp944gmlgf3/deo5.png\",\"name\":\"Salt stone\",\"price\":\"AED 20.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"21\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/e6k7piftu0a3/deo6.png\",\"name\":\"Honest dedorant\",\"price\":\"AED 26.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"22\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ye47g5nlnomb/deo7.png\",\"name\":\"Lambda control\",\"price\":\"AED 54.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"23\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/0s8vrzyd6ysx/deo8.png\",\"name\":\"Necessaire\",\"price\":\"AED 26.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"24\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/hyyykf52n26b/masala1.png\",\"name\":\"Garam masala\",\"price\":\"AED 16.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"25\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/5ruvyvsqy2hu/masala2.png\",\"name\":\"Signature masala\",\"price\":\"AED 17.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"26\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/j03fu5ziu01z/masala3.png\",\"name\":\"Marshalls crek\",\"price\":\"AED 10.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"27\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/0itg5apukz6a/masala4.png\",\"name\":\"Rishi masala\",\"price\":\"AED 16.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"28\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/fsrz5wezyyo7/masla5.png\",\"name\":\"Rumi masala\",\"price\":\"AED 20.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"29\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/vd4r96cmkw92/masala6.png\",\"name\":\"Beef masala\",\"price\":\"AED 26.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"30\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/zlcowkla3bu1/masala7.png\",\"name\":\"Biryani masala\",\"price\":\"AED 54.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"31\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/c6of4cc2clfh/masala8.png\",\"name\":\"Spicewalla\",\"price\":\"AED 26.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"32\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/u5pfq8ssqszs/groom1.png\",\"name\":\"Hair Comb\",\"price\":\"AED 10.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"33\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/e164tcb0ewy9/groom2.png\",\"name\":\"Face Oil\",\"price\":\"AED 16.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"34\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/vn046ek9vzmr/groom3.png\",\"name\":\"Dog gloves\",\"price\":\"AED 20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"35\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/eq6znhdgf0zk/groom4.png\",\"name\":\"Silicon dog\",\"price\":\"AED 16.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"36\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/xepnyvjowc43/groom5.png\",\"name\":\"Durable Cat\",\"price\":\"AED 20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"37\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/t4ci5xcdkx32/groom6.png\",\"name\":\"Bath Brush Fine\",\"price\":\"AED 20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"38\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/7q453dowj6hk/groom7.png\",\"name\":\"Double Comb\",\"price\":\"AED 20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"39\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/deudt8rxo2t5/groom8.png\",\"name\":\"Peine para\",\"price\":\"AED 20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get cateList => _cateList;
  set cateList(List<CategformodelStruct> value) {
    _cateList = value;
    prefs.setStringList(
        'ff_cateList', value.map((x) => x.serialize()).toList());
  }

  void addToCateList(CategformodelStruct value) {
    cateList.add(value);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  void removeFromCateList(CategformodelStruct value) {
    cateList.remove(value);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCateList(int index) {
    cateList.removeAt(index);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  void updateCateListAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    cateList[index] = updateFn(_cateList[index]);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCateList(int index, CategformodelStruct value) {
    cateList.insert(index, value);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  List<CategformodelStruct> _fruit = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ko9sjt0c75a2/home_fruit.png\",\"name\":\"Apricot Kernel\",\"price\":\"AED 20.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/92otl80cnmc6/home_fruit2.png\",\"name\":\"Orange\",\"price\":\"AED 16.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get fruit => _fruit;
  set fruit(List<CategformodelStruct> value) {
    _fruit = value;
  }

  void addToFruit(CategformodelStruct value) {
    fruit.add(value);
  }

  void removeFromFruit(CategformodelStruct value) {
    fruit.remove(value);
  }

  void removeAtIndexFromFruit(int index) {
    fruit.removeAt(index);
  }

  void updateFruitAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    fruit[index] = updateFn(_fruit[index]);
  }

  void insertAtIndexInFruit(int index, CategformodelStruct value) {
    fruit.insert(index, value);
  }

  List<CategformodelStruct> _veg = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ks7zhm9yxpzj/home_veg.png\",\"name\":\"Green Apples \",\"price\":\"AED 30.00\",\"catetype\":\"Vegatable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/uhv6mfkgyljl/veg2.png\",\"name\":\"Cucumber\",\"price\":\"AED 16.00\",\"catetype\":\"Vegatable\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get veg => _veg;
  set veg(List<CategformodelStruct> value) {
    _veg = value;
  }

  void addToVeg(CategformodelStruct value) {
    veg.add(value);
  }

  void removeFromVeg(CategformodelStruct value) {
    veg.remove(value);
  }

  void removeAtIndexFromVeg(int index) {
    veg.removeAt(index);
  }

  void updateVegAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    veg[index] = updateFn(_veg[index]);
  }

  void insertAtIndexInVeg(int index, CategformodelStruct value) {
    veg.insert(index, value);
  }

  List<CategformodelStruct> _groom = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/u5pfq8ssqszs/groom1.png\",\"name\":\"Hair Comb\",\"price\":\"AED 10.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/e164tcb0ewy9/groom2.png\",\"name\":\"Face Oil\",\"price\":\"AED 16.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get groom => _groom;
  set groom(List<CategformodelStruct> value) {
    _groom = value;
  }

  void addToGroom(CategformodelStruct value) {
    groom.add(value);
  }

  void removeFromGroom(CategformodelStruct value) {
    groom.remove(value);
  }

  void removeAtIndexFromGroom(int index) {
    groom.removeAt(index);
  }

  void updateGroomAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    groom[index] = updateFn(_groom[index]);
  }

  void insertAtIndexInGroom(int index, CategformodelStruct value) {
    groom.insert(index, value);
  }

  List<CategformodelStruct> _deo = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/tnu7fis5pew9/deo1.png\",\"name\":\"Sanex tube\",\"price\":\"AED 16.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/57nltsuiisn5/deo2.png\",\"name\":\"Organic decorate\",\"price\":\"AED 17.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get deo => _deo;
  set deo(List<CategformodelStruct> value) {
    _deo = value;
  }

  void addToDeo(CategformodelStruct value) {
    deo.add(value);
  }

  void removeFromDeo(CategformodelStruct value) {
    deo.remove(value);
  }

  void removeAtIndexFromDeo(int index) {
    deo.removeAt(index);
  }

  void updateDeoAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    deo[index] = updateFn(_deo[index]);
  }

  void insertAtIndexInDeo(int index, CategformodelStruct value) {
    deo.insert(index, value);
  }

  List<CategformodelStruct> _masala = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/hyyykf52n26b/masala1.png\",\"name\":\"Anamalai Mace\",\"price\":\"AED 41.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/5ruvyvsqy2hu/masala2.png\",\"name\":\"Signature Masala \",\"price\":\"AED 17.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get masala => _masala;
  set masala(List<CategformodelStruct> value) {
    _masala = value;
  }

  void addToMasala(CategformodelStruct value) {
    masala.add(value);
  }

  void removeFromMasala(CategformodelStruct value) {
    masala.remove(value);
  }

  void removeAtIndexFromMasala(int index) {
    masala.removeAt(index);
  }

  void updateMasalaAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    masala[index] = updateFn(_masala[index]);
  }

  void insertAtIndexInMasala(int index, CategformodelStruct value) {
    masala.insert(index, value);
  }

  List<SwipmodelStruct> _swiplist = [
    SwipmodelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/hyyykf52n26b/masala1.png\",\"name\":\"Garam masala\",\"price\":\"AED 16.00\"}')),
    SwipmodelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/gdi3gc5lkm5n/veg4.png\",\"name\":\"Spinch\",\"price\":\"AED 24.00\"}')),
    SwipmodelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/dsb96yw1p9jb/deo4.png\",\"name\":\"Organic Stick\",\"price\":\"AED 16.00\"}'))
  ];
  List<SwipmodelStruct> get swiplist => _swiplist;
  set swiplist(List<SwipmodelStruct> value) {
    _swiplist = value;
  }

  void addToSwiplist(SwipmodelStruct value) {
    swiplist.add(value);
  }

  void removeFromSwiplist(SwipmodelStruct value) {
    swiplist.remove(value);
  }

  void removeAtIndexFromSwiplist(int index) {
    swiplist.removeAt(index);
  }

  void updateSwiplistAtIndex(
    int index,
    SwipmodelStruct Function(SwipmodelStruct) updateFn,
  ) {
    swiplist[index] = updateFn(_swiplist[index]);
  }

  void insertAtIndexInSwiplist(int index, SwipmodelStruct value) {
    swiplist.insert(index, value);
  }

  List<SearchmodelStruct> _searchList = [
    SearchmodelStruct.fromSerializableMap(jsonDecode('{\"name\":\"Fruits \"}')),
    SearchmodelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Vegetable\"}')),
    SearchmodelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Ice cream\"}')),
    SearchmodelStruct.fromSerializableMap(jsonDecode('{\"name\":\"Groomer\"}')),
    SearchmodelStruct.fromSerializableMap(jsonDecode('{\"name\":\"Face oil\"}'))
  ];
  List<SearchmodelStruct> get searchList => _searchList;
  set searchList(List<SearchmodelStruct> value) {
    _searchList = value;
  }

  void addToSearchList(SearchmodelStruct value) {
    searchList.add(value);
  }

  void removeFromSearchList(SearchmodelStruct value) {
    searchList.remove(value);
  }

  void removeAtIndexFromSearchList(int index) {
    searchList.removeAt(index);
  }

  void updateSearchListAtIndex(
    int index,
    SearchmodelStruct Function(SearchmodelStruct) updateFn,
  ) {
    searchList[index] = updateFn(_searchList[index]);
  }

  void insertAtIndexInSearchList(int index, SearchmodelStruct value) {
    searchList.insert(index, value);
  }

  bool _isIntro = false;
  bool get isIntro => _isIntro;
  set isIntro(bool value) {
    _isIntro = value;
    prefs.setBool('ff_isIntro', value);
  }

  bool _islogin = false;
  bool get islogin => _islogin;
  set islogin(bool value) {
    _islogin = value;
    prefs.setBool('ff_islogin', value);
  }

  int _introIndex = 0;
  int get introIndex => _introIndex;
  set introIndex(int value) {
    _introIndex = value;
  }

  List<CategoriesStruct> _profile = [
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/cy50r6tx18ui/profile1.png\",\"title\":\"My profile\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/p7z65cbetl9w/profile2.png\",\"title\":\"Security\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/18brr2rr7gzn/profile3.png\",\"title\":\"Settings\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/yyzh8oyy8j79/profile4.png\",\"title\":\"My favorite\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/adt4e4tntf6r/profile5.png\",\"title\":\"Privacy policy\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/vefx6evlyffv/security2.png\",\"title\":\"Notification\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/iv9m80msnxhe/profile6.png\",\"title\":\"Logout\"}'))
  ];
  List<CategoriesStruct> get profile => _profile;
  set profile(List<CategoriesStruct> value) {
    _profile = value;
  }

  void addToProfile(CategoriesStruct value) {
    profile.add(value);
  }

  void removeFromProfile(CategoriesStruct value) {
    profile.remove(value);
  }

  void removeAtIndexFromProfile(int index) {
    profile.removeAt(index);
  }

  void updateProfileAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    profile[index] = updateFn(_profile[index]);
  }

  void insertAtIndexInProfile(int index, CategoriesStruct value) {
    profile.insert(index, value);
  }

  List<CategoriesStruct> _setting = [
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/he3ofgv7jyuo/setting1.png\",\"title\":\"About us\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/etv40ab78bl9/setting2.png\",\"title\":\"Help\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/m1duljp65v60/setting3.png\",\"title\":\"Feedback\"}'))
  ];
  List<CategoriesStruct> get setting => _setting;
  set setting(List<CategoriesStruct> value) {
    _setting = value;
  }

  void addToSetting(CategoriesStruct value) {
    setting.add(value);
  }

  void removeFromSetting(CategoriesStruct value) {
    setting.remove(value);
  }

  void removeAtIndexFromSetting(int index) {
    setting.removeAt(index);
  }

  void updateSettingAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    setting[index] = updateFn(_setting[index]);
  }

  void insertAtIndexInSetting(int index, CategoriesStruct value) {
    setting.insert(index, value);
  }

  List<String> _searchList1 = [];
  List<String> get searchList1 => _searchList1;
  set searchList1(List<String> value) {
    _searchList1 = value;
  }

  void addToSearchList1(String value) {
    searchList1.add(value);
  }

  void removeFromSearchList1(String value) {
    searchList1.remove(value);
  }

  void removeAtIndexFromSearchList1(int index) {
    searchList1.removeAt(index);
  }

  void updateSearchList1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searchList1[index] = updateFn(_searchList1[index]);
  }

  void insertAtIndexInSearchList1(int index, String value) {
    searchList1.insert(index, value);
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
    prefs.setString('ff_firstName', value);
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String value) {
    _lastName = value;
    prefs.setString('ff_lastName', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  int _addedaddress = 0;
  int get addedaddress => _addedaddress;
  set addedaddress(int value) {
    _addedaddress = value;
  }

  int _bottomIndex = 0;
  int get bottomIndex => _bottomIndex;
  set bottomIndex(int value) {
    _bottomIndex = value;
    prefs.setInt('ff_bottomIndex', value);
  }

  String _address = '';
  String get address => _address;
  set address(String value) {
    _address = value;
    prefs.setString('ff_address', value);
  }

  List<CheckoutStruct> _checkoutList = [
    CheckoutStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/0umr74kco94a/gpay.png\",\"name\":\"Google pay\",\"number\":\"XXXX XXXX 125\",\"isselected\":\"0\"}')),
    CheckoutStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/7ie1q5i49fzv/papal.png\",\"name\":\"Paypal\",\"number\":\"XXXX XXXX 369\",\"isselected\":\"1\"}')),
    CheckoutStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ymfyearrfngv/Group_1171275531.png\",\"name\":\"Visa\",\"number\":\"XXXX XXXX 158\",\"isselected\":\"2\"}'))
  ];
  List<CheckoutStruct> get checkoutList => _checkoutList;
  set checkoutList(List<CheckoutStruct> value) {
    _checkoutList = value;
  }

  void addToCheckoutList(CheckoutStruct value) {
    checkoutList.add(value);
  }

  void removeFromCheckoutList(CheckoutStruct value) {
    checkoutList.remove(value);
  }

  void removeAtIndexFromCheckoutList(int index) {
    checkoutList.removeAt(index);
  }

  void updateCheckoutListAtIndex(
    int index,
    CheckoutStruct Function(CheckoutStruct) updateFn,
  ) {
    checkoutList[index] = updateFn(_checkoutList[index]);
  }

  void insertAtIndexInCheckoutList(int index, CheckoutStruct value) {
    checkoutList.insert(index, value);
  }

  int _payment = 0;
  int get payment => _payment;
  set payment(int value) {
    _payment = value;
  }

  int _select = 0;
  int get select => _select;
  set select(int value) {
    _select = value;
  }

  String _type = 'Office';
  String get type => _type;
  set type(String value) {
    _type = value;
  }

  List<CategformodelStruct> _basketList = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftarget.scene7.com%2Fis%2Fimage%2FTarget%2FGUEST_6b489080-cae3-4eba-8566-bd4731e67219&f=1&nofb=1&ipt=e706e55c0bfdccdd9377f28b2e77b394fc1639aa96521bd4346abe61b2ac8452&ipo=images\",\"name\":\"Cheetos\",\"price\":\"AED 8.25\",\"description\":\"Cheetos Flamin Hot\",\"catetype\":\"Snacks\",\"isfav\":\"false\",\"iscart\":\"false\",\"size\":\"\",\"subtotal\":\"\",\"is_fruit\":\"false\"}'))
  ];
  List<CategformodelStruct> get basketList => _basketList;
  set basketList(List<CategformodelStruct> value) {
    _basketList = value;
  }

  void addToBasketList(CategformodelStruct value) {
    basketList.add(value);
  }

  void removeFromBasketList(CategformodelStruct value) {
    basketList.remove(value);
  }

  void removeAtIndexFromBasketList(int index) {
    basketList.removeAt(index);
  }

  void updateBasketListAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    basketList[index] = updateFn(_basketList[index]);
  }

  void insertAtIndexInBasketList(int index, CategformodelStruct value) {
    basketList.insert(index, value);
  }

  int _homeIndex = 0;
  int get homeIndex => _homeIndex;
  set homeIndex(int value) {
    _homeIndex = value;
    prefs.setInt('ff_homeIndex', value);
  }

  LoginModelStruct _userModel = LoginModelStruct();
  LoginModelStruct get userModel => _userModel;
  set userModel(LoginModelStruct value) {
    _userModel = value;
    prefs.setString('ff_userModel', value.serialize());
  }

  void updateUserModelStruct(Function(LoginModelStruct) updateFn) {
    updateFn(_userModel);
    prefs.setString('ff_userModel', _userModel.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
