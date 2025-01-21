import '/components/category_component/category_component_widget.dart';
import '/components/home_component/home_component_widget.dart';
import '/components/order_component/order_component_widget.dart';
import '/components/profile_component/profile_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_page_widget.dart' show BottomPageWidget;
import 'package:flutter/material.dart';

class BottomPageModel extends FlutterFlowModel<BottomPageWidget> {
  ///  Local state fields for this page.

  int? bottomadded = 0;

  bool order = false;

  ///  State fields for stateful widgets in this page.

  // Model for HomeComponent component.
  late HomeComponentModel homeComponentModel;
  // Model for CategoryComponent component.
  late CategoryComponentModel categoryComponentModel;
  // Model for OrderComponent component.
  late OrderComponentModel orderComponentModel;
  // Model for ProfileComponent component.
  late ProfileComponentModel profileComponentModel;

  @override
  void initState(BuildContext context) {
    homeComponentModel = createModel(context, () => HomeComponentModel());
    categoryComponentModel =
        createModel(context, () => CategoryComponentModel());
    orderComponentModel = createModel(context, () => OrderComponentModel());
    profileComponentModel = createModel(context, () => ProfileComponentModel());
  }

  @override
  void dispose() {
    homeComponentModel.dispose();
    categoryComponentModel.dispose();
    orderComponentModel.dispose();
    profileComponentModel.dispose();
  }
}
