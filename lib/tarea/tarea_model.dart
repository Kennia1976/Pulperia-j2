import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TareaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNumero1 widget.
  TextEditingController? txtNumero1Controller;
  String? Function(BuildContext, String?)? txtNumero1ControllerValidator;
  // State field(s) for txtNumero2 widget.
  TextEditingController? txtNumero2Controller;
  String? Function(BuildContext, String?)? txtNumero2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNumero1Controller?.dispose();
    txtNumero2Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
