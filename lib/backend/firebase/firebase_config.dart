import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCHnyCV20T3FkFXNZyc78WmS61rx79nXNI",
            authDomain: "e-com-rui2fw.firebaseapp.com",
            projectId: "e-com-rui2fw",
            storageBucket: "e-com-rui2fw.firebasestorage.app",
            messagingSenderId: "36867726408",
            appId: "1:36867726408:web:67ee95b1258fe3e5618c7d"));
  } else {
    await Firebase.initializeApp();
  }
}
