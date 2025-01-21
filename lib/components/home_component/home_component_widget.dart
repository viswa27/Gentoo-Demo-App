import '/components/categories_contain/categories_contain_widget.dart';
import '/components/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_component_model.dart';
export 'home_component_model.dart';

class HomeComponentWidget extends StatefulWidget {
  const HomeComponentWidget({super.key});

  @override
  State<HomeComponentWidget> createState() => _HomeComponentWidgetState();
}

class _HomeComponentWidgetState extends State<HomeComponentWidget>
    with TickerProviderStateMixin {
  late HomeComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeComponentModel());

    animationsMap.addAll({
      'wrapOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'wrapOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'wrapOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'wrapOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'wrapOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 63.0, 0.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Satoshi',
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Satoshi'),
                              ),
                    ),
                    Text(
                      FFAppState().firstName,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Satoshi',
                            color: FlutterFlowTheme.of(context).black40,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Satoshi'),
                          ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('SearchPage');
                        },
                        child: Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/search.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                                alignment: const Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('BasketPage');
                          },
                          child: Container(
                            width: 48.0,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(16.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('BasketPage');
                              },
                              child: Icon(
                                FFIcons.kbasket,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(
              0,
              12.0,
              0,
              12.0,
            ),
            scrollDirection: Axis.vertical,
            children: [
              Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/Banner.jpg',
                        width: double.infinity,
                        height: 140.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(44.0, 22.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First order for \n 10% off',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Satoshi',
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Satoshi'),
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Container(
                            width: 90.0,
                            height: 28.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Shop now',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Satoshi'),
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'CategoryPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                            ),
                          },
                        );
                      },
                      child: Text(
                        'View all',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 24.0),
                child: Builder(
                  builder: (context) {
                    final categiruesData =
                        FFAppState().categories.toList().take(4).toList();

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(categiruesData.length,
                                (categiruesDataIndex) {
                          final categiruesDataItem =
                              categiruesData[categiruesDataIndex];
                          return wrapWithModel(
                            model: _model.categoriesContainModels.getModel(
                              categiruesDataIndex.toString(),
                              categiruesDataIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: CategoriesContainWidget(
                              key: Key(
                                'Keyyoh_${categiruesDataIndex.toString()}',
                              ),
                              image: categiruesDataItem.image,
                              text: categiruesDataItem.title,
                              oncontainer: () async {},
                              ontext: () async {},
                            ),
                          );
                        })
                            .divide(const SizedBox(width: 16.0))
                            .addToStart(const SizedBox(width: 20.0))
                            .addToEnd(const SizedBox(width: 20.0)),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Grooming',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Satoshi'),
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('GroomingsPage');
                      },
                      child: Text(
                        'View all',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
                child: Builder(
                  builder: (context) {
                    final cateData = functions
                        .filtercatelist(
                            'Grooming', FFAppState().cateList.toList())
                        .toList()
                        .take(2)
                        .toList();

                    return Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: List.generate(cateData.length, (cateDataIndex) {
                        final cateDataItem = cateData[cateDataIndex];
                        return Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width < 810.0) {
                              return ((MediaQuery.sizeOf(context).width - 56) *
                                  1 /
                                  2);
                            } else if ((MediaQuery.sizeOf(context).width <=
                                    810.0) &&
                                (MediaQuery.sizeOf(context).width >= 1280.0)) {
                              return ((MediaQuery.sizeOf(context).width - 88) *
                                  1 /
                                  4);
                            } else {
                              return ((MediaQuery.sizeOf(context).width - 152) *
                                  1 /
                                  8);
                            }
                          }(),
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.productComponentModels1.getModel(
                              cateDataIndex.toString(),
                              cateDataIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ProductComponentWidget(
                              key: Key(
                                'Keycia_${cateDataIndex.toString()}',
                              ),
                              data: cateDataItem,
                              ontapcontain: () async {
                                context.pushNamed(
                                  'MasaladetailsPage',
                                  queryParameters: {
                                    'details': serializeParam(
                                      cateDataItem,
                                      ParamType.DataStruct,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              ontapfav: () async {
                                if (cateDataItem.isfav == true) {
                                  FFAppState().updateCateListAtIndex(
                                    cateDataItem.id,
                                    (e) => e..isfav = false,
                                  );
                                  safeSetState(() {});
                                } else {
                                  FFAppState().updateCateListAtIndex(
                                    cateDataItem.id,
                                    (e) => e..isfav = true,
                                  );
                                  safeSetState(() {});
                                }
                              },
                            ),
                          ),
                        );
                      }),
                    ).animateOnPageLoad(
                        animationsMap['wrapOnPageLoadAnimation1']!);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vegetable',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Satoshi'),
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('FruitPage');
                      },
                      child: Text(
                        'View all',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
                child: Builder(
                  builder: (context) {
                    final fruitDataData = functions
                        .filtercatelist(
                            'Vegetable', FFAppState().cateList.toList())
                        .toList()
                        .take(2)
                        .toList();

                    return Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: List.generate(fruitDataData.length,
                          (fruitDataDataIndex) {
                        final fruitDataDataItem =
                            fruitDataData[fruitDataDataIndex];
                        return Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width < 810.0) {
                              return ((MediaQuery.sizeOf(context).width - 56) *
                                  1 /
                                  2);
                            } else if ((MediaQuery.sizeOf(context).width <=
                                    810.0) &&
                                (MediaQuery.sizeOf(context).width >= 1280.0)) {
                              return ((MediaQuery.sizeOf(context).width - 88) *
                                  1 /
                                  4);
                            } else {
                              return ((MediaQuery.sizeOf(context).width - 152) *
                                  1 /
                                  8);
                            }
                          }(),
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.productComponentModels2.getModel(
                              fruitDataDataIndex.toString(),
                              fruitDataDataIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ProductComponentWidget(
                              key: Key(
                                'Key2lj_${fruitDataDataIndex.toString()}',
                              ),
                              data: fruitDataDataItem,
                              ontapcontain: () async {
                                context.pushNamed(
                                  'MasaladetailsPage',
                                  queryParameters: {
                                    'details': serializeParam(
                                      fruitDataDataItem,
                                      ParamType.DataStruct,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              ontapfav: () async {
                                if (fruitDataDataItem.isfav == true) {
                                  FFAppState().updateCateListAtIndex(
                                    fruitDataDataItem.id,
                                    (e) => e..isfav = false,
                                  );
                                  safeSetState(() {});
                                } else {
                                  FFAppState().updateCateListAtIndex(
                                    fruitDataDataItem.id,
                                    (e) => e..isfav = true,
                                  );
                                  safeSetState(() {});
                                }
                              },
                            ),
                          ),
                        );
                      }),
                    ).animateOnPageLoad(
                        animationsMap['wrapOnPageLoadAnimation2']!);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fruits',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Satoshi'),
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('VegetablePage');
                      },
                      child: Text(
                        'View all',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
                child: Builder(
                  builder: (context) {
                    final fruitDataData = functions
                        .filtercatelist(
                            'Fruits', FFAppState().cateList.toList())
                        .toList()
                        .take(2)
                        .toList();

                    return Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: List.generate(fruitDataData.length,
                          (fruitDataDataIndex) {
                        final fruitDataDataItem =
                            fruitDataData[fruitDataDataIndex];
                        return Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width < 810.0) {
                              return ((MediaQuery.sizeOf(context).width - 56) *
                                  1 /
                                  2);
                            } else if ((MediaQuery.sizeOf(context).width <=
                                    810.0) &&
                                (MediaQuery.sizeOf(context).width >= 1280.0)) {
                              return ((MediaQuery.sizeOf(context).width - 88) *
                                  1 /
                                  4);
                            } else {
                              return ((MediaQuery.sizeOf(context).width - 152) *
                                  1 /
                                  8);
                            }
                          }(),
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.productComponentModels3.getModel(
                              fruitDataDataIndex.toString(),
                              fruitDataDataIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ProductComponentWidget(
                              key: Key(
                                'Keybhy_${fruitDataDataIndex.toString()}',
                              ),
                              data: fruitDataDataItem,
                              ontapcontain: () async {
                                context.pushNamed(
                                  'MasaladetailsPage',
                                  queryParameters: {
                                    'details': serializeParam(
                                      fruitDataDataItem,
                                      ParamType.DataStruct,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              ontapfav: () async {
                                if (fruitDataDataItem.isfav == true) {
                                  FFAppState().updateCateListAtIndex(
                                    fruitDataDataItem.id,
                                    (e) => e..isfav = false,
                                  );
                                  safeSetState(() {});
                                } else {
                                  FFAppState().updateCateListAtIndex(
                                    fruitDataDataItem.id,
                                    (e) => e..isfav = true,
                                  );
                                  safeSetState(() {});
                                }
                              },
                            ),
                          ),
                        );
                      }),
                    ).animateOnPageLoad(
                        animationsMap['wrapOnPageLoadAnimation3']!);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Deodorants',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Satoshi'),
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'DeodorantsPage',
                          queryParameters: {
                            'name': serializeParam(
                              'Deodorants',
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Text(
                        'View all',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
                child: Builder(
                  builder: (context) {
                    final deodorantsData = functions
                        .filtercatelist(
                            'Deodorants', FFAppState().cateList.toList())
                        .toList()
                        .take(2)
                        .toList();

                    return Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: List.generate(deodorantsData.length,
                          (deodorantsDataIndex) {
                        final deodorantsDataItem =
                            deodorantsData[deodorantsDataIndex];
                        return Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width < 810.0) {
                              return ((MediaQuery.sizeOf(context).width - 56) *
                                  1 /
                                  2);
                            } else if ((MediaQuery.sizeOf(context).width <=
                                    810.0) &&
                                (MediaQuery.sizeOf(context).width >= 1280.0)) {
                              return ((MediaQuery.sizeOf(context).width - 88) *
                                  1 /
                                  4);
                            } else {
                              return ((MediaQuery.sizeOf(context).width - 152) *
                                  1 /
                                  8);
                            }
                          }(),
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.productComponentModels4.getModel(
                              deodorantsDataIndex.toString(),
                              deodorantsDataIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ProductComponentWidget(
                              key: Key(
                                'Keyuy2_${deodorantsDataIndex.toString()}',
                              ),
                              data: deodorantsDataItem,
                              ontapcontain: () async {
                                context.pushNamed(
                                  'MasaladetailsPage',
                                  queryParameters: {
                                    'details': serializeParam(
                                      deodorantsDataItem,
                                      ParamType.DataStruct,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              ontapfav: () async {
                                if (deodorantsDataItem.isfav == true) {
                                  FFAppState().updateCateListAtIndex(
                                    deodorantsDataItem.id,
                                    (e) => e..isfav = false,
                                  );
                                  safeSetState(() {});
                                } else {
                                  FFAppState().updateCateListAtIndex(
                                    deodorantsDataItem.id,
                                    (e) => e..isfav = true,
                                  );
                                  safeSetState(() {});
                                }
                              },
                            ),
                          ),
                        );
                      }),
                    ).animateOnPageLoad(
                        animationsMap['wrapOnPageLoadAnimation4']!);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Masalas',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Satoshi'),
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'MasalaPage',
                          queryParameters: {
                            'name': serializeParam(
                              'Masalas',
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Text(
                        'View all',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).black40,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Satoshi'),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
                child: Builder(
                  builder: (context) {
                    final masalasData = functions
                        .filtercatelist(
                            'Masalas', FFAppState().cateList.toList())
                        .toList()
                        .take(2)
                        .toList();

                    return Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children:
                          List.generate(masalasData.length, (masalasDataIndex) {
                        final masalasDataItem = masalasData[masalasDataIndex];
                        return Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width < 810.0) {
                              return ((MediaQuery.sizeOf(context).width - 56) *
                                  1 /
                                  2);
                            } else if ((MediaQuery.sizeOf(context).width <=
                                    810.0) &&
                                (MediaQuery.sizeOf(context).width >= 1280.0)) {
                              return ((MediaQuery.sizeOf(context).width - 88) *
                                  1 /
                                  4);
                            } else {
                              return ((MediaQuery.sizeOf(context).width - 152) *
                                  1 /
                                  8);
                            }
                          }(),
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.productComponentModels5.getModel(
                              masalasDataIndex.toString(),
                              masalasDataIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ProductComponentWidget(
                              key: Key(
                                'Key38w_${masalasDataIndex.toString()}',
                              ),
                              data: masalasDataItem,
                              ontapcontain: () async {
                                context.pushNamed(
                                  'MasaladetailsPage',
                                  queryParameters: {
                                    'details': serializeParam(
                                      masalasDataItem,
                                      ParamType.DataStruct,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              ontapfav: () async {
                                if (masalasDataItem.isfav == true) {
                                  FFAppState().updateCateListAtIndex(
                                    masalasDataItem.id,
                                    (e) => e..isfav = false,
                                  );
                                  safeSetState(() {});
                                } else {
                                  FFAppState().updateCateListAtIndex(
                                    masalasDataItem.id,
                                    (e) => e..isfav = true,
                                  );
                                  safeSetState(() {});
                                }
                              },
                            ),
                          ),
                        );
                      }),
                    ).animateOnPageLoad(
                        animationsMap['wrapOnPageLoadAnimation5']!);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
