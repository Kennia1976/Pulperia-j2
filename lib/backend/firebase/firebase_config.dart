import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCk34kiGiJVor_Tq63Ka4SDcUy6SuM-QGg",
            authDomain: "pulperia-j-e267a.firebaseapp.com",
            projectId: "pulperia-j-e267a",
            storageBucket: "pulperia-j-e267a.appspot.com",
            messagingSenderId: "1061257394920",
            appId: "1:1061257394920:web:e21c3f19de8b1b45ee675d",
            measurementId: "G-X7EG4PW6L0"));
  } else {
    await Firebase.initializeApp();
  }
}
