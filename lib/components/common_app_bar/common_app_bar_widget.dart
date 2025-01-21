import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'common_app_bar_model.dart';
export 'common_app_bar_model.dart';

class CommonAppBarWidget extends StatefulWidget {
  const CommonAppBarWidget({
    super.key,
    required this.name,
    bool? color,
  }) : color = color ?? false;

  final String? name;
  final bool color;

  @override
  State<CommonAppBarWidget> createState() => _CommonAppBarWidgetState();
}

class _CommonAppBarWidgetState extends State<CommonAppBarWidget> {
  late CommonAppBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonAppBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: widget.color == true
                    ? FlutterFlowTheme.of(context).lightGray
                    : FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/back_icon.png',
                      width: 24.0,
                      height: 24.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.name,
                'name',
              ),
              maxLines: 1,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Satoshi',
                    fontSize: 28.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: GoogleFonts.asMap().containsKey('Satoshi'),
                    lineHeight: 1.5,
                  ),
            ),
          ].divide(const SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
