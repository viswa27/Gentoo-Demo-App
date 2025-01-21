import '/dialog_component/orderempty/orderempty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_component_widget.dart' show OrderComponentWidget;
import 'package:flutter/material.dart';

class OrderComponentModel extends FlutterFlowModel<OrderComponentWidget> {
  ///  Local state fields for this component.

  bool order = false;

  ///  State fields for stateful widgets in this component.

  // Model for Orderempty component.
  late OrderemptyModel orderemptyModel;

  @override
  void initState(BuildContext context) {
    orderemptyModel = createModel(context, () => OrderemptyModel());
  }

  @override
  void dispose() {
    orderemptyModel.dispose();
  }
}
