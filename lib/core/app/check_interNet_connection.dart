import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class CheckInternetConnection {
  CheckInternetConnection._();
  static final CheckInternetConnection instance =
      CheckInternetConnection._();

  ValueNotifier<bool> isInternetConnected = ValueNotifier<bool>(true);

 Future <void> init()async{
  final result= await Connectivity().checkConnectivity();
  isInternetAvailable(result);
 }

 bool isInternetAvailable(List<ConnectivityResult> results){
  if(results.contains(ConnectivityResult.mobile) || results.contains(ConnectivityResult.wifi)){
    isInternetConnected.value=true;
    return true;

   }else{
    isInternetConnected.value=false;
    return false;
 }
 }
}


