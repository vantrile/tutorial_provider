
import 'package:flutter/material.dart';

enum ViewState {
  initial, loading, loaded, error
}

enum AppState { uninitialized, initialized }

enum ProgressDialogType{
  processing,
  verifying;

  String getMessage(){
    switch(this){
      case processing:
        return "Data is processing";
      case verifying:
        return "Data is verifying";
    }
  }
}