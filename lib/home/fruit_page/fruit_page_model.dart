import '/components/common_app_bar/common_app_bar_widget.dart';
import '/components/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'fruit_page_widget.dart' show FruitPageWidget;
import 'package:flutter/material.dart';

class FruitPageModel extends FlutterFlowModel<FruitPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    productComponentModels =
        FlutterFlowDynamicModels(() => ProductComponentModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    productComponentModels.dispose();
  }
}
