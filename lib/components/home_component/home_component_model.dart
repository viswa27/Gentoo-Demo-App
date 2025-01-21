import '/components/categories_contain/categories_contain_widget.dart';
import '/components/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_component_widget.dart' show HomeComponentWidget;
import 'package:flutter/material.dart';

class HomeComponentModel extends FlutterFlowModel<HomeComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for CategoriesContain dynamic component.
  late FlutterFlowDynamicModels<CategoriesContainModel> categoriesContainModels;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels1;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels2;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels3;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels4;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels5;

  @override
  void initState(BuildContext context) {
    categoriesContainModels =
        FlutterFlowDynamicModels(() => CategoriesContainModel());
    productComponentModels1 =
        FlutterFlowDynamicModels(() => ProductComponentModel());
    productComponentModels2 =
        FlutterFlowDynamicModels(() => ProductComponentModel());
    productComponentModels3 =
        FlutterFlowDynamicModels(() => ProductComponentModel());
    productComponentModels4 =
        FlutterFlowDynamicModels(() => ProductComponentModel());
    productComponentModels5 =
        FlutterFlowDynamicModels(() => ProductComponentModel());
  }

  @override
  void dispose() {
    categoriesContainModels.dispose();
    productComponentModels1.dispose();
    productComponentModels2.dispose();
    productComponentModels3.dispose();
    productComponentModels4.dispose();
    productComponentModels5.dispose();
  }
}
