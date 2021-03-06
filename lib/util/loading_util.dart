import 'package:flutter/material.dart';
import 'package:frame_master/view/dialog/loading_dialog.dart';

class LoadingUtil {
  ///显示加载dialog
  static void showLoadingDialog(BuildContext context,
      {double bottomMargin = 0.0, double bottomPadding = 0.0}) {
    LoadingDialog.show(context, bottomMargin: bottomMargin, bottomPadding: bottomPadding);
  }

  ///取消加载dialog
  static void cancelLoadingDialog(BuildContext context) {
    LoadingDialog.cancel(context);
  }
}
