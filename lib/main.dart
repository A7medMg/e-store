import 'package:e_store/core/app/env.variales.dart';
import 'package:e_store/e_store_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EnvVariables.instance.init(envType: EnvType.dev);
  runApp(const MyApp());
}




