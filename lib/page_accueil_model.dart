import 'package:flutter/material.dart';

class PageAccueilModel {
  late FocusNode unfocusNode;

  PageAccueilModel() {
    unfocusNode = FocusNode();
  }

  void dispose() {
    unfocusNode.dispose();
  }
}

PageAccueilModel createModel(BuildContext context, PageAccueilModel Function() modelFactory) {
  return modelFactory();
}



//  child: ElevatedButton(
//                         onPressed: () {
//                           scan();
//                         },