import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../node1/node1_widget.dart';
import '../node2/node2_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClusterPageWidget extends StatefulWidget {
  ClusterPageWidget({
    Key key,
    this.clusterName,
    this.version,
    this.uuid,
    this.dateAndTime,
  }) : super(key: key);

  final dynamic clusterName;
  final String version;
  final String uuid;
  final String dateAndTime;

  @override
  _ClusterPageWidgetState createState() => _ClusterPageWidgetState();
}

class _ClusterPageWidgetState extends State<ClusterPageWidget> {
  bool _loadingButton1 = false;
  dynamic node;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, -0.1),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.05, -0.6),
                child: FutureBuilder<dynamic>(
                  future: getClusterCall(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.primaryColor,
                          ),
                        ),
                      );
                    }
                    final containerGetClusterResponse = snapshot.data;
                    return Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Text(
                                      valueOrDefault<String>(
                                        getJsonField(
                                                containerGetClusterResponse,
                                                r'''$..name''')
                                            .toString(),
                                        'empty',
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(
                                child: Text(
                                  getJsonField(containerGetClusterResponse,
                                          r'''$..status''')
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Text(
                                  getJsonField(containerGetClusterResponse,
                                          r'''$..model''')
                                      .toString(),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(5, 0, 0, 20),
                            child: Text(
                              'Status',
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(17, 0, 0, 20),
                            child: Text(
                              'Name',
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(45, 0, 0, 20),
                            child: Text(
                              'Model',
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(35, 0, 0, 20),
                            child: Text(
                              'Uptime',
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    FutureBuilder<dynamic>(
                      future: getNodeCall(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                          );
                        }
                        final rowGetNodeResponse = snapshot.data;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Icon(
                                Icons.settings_outlined,
                                color: Color(0xFF006D18),
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() => _loadingButton1 = true);
                                  try {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Node1Widget(),
                                      ),
                                    );
                                    node = await getNodeCall();

                                    setState(() {});
                                  } finally {
                                    setState(() => _loadingButton1 = false);
                                  }
                                },
                                text: getJsonField(
                                        rowGetNodeResponse, r'''$..name''')
                                    .toString(),
                                options: FFButtonOptions(
                                  width: 100,
                                  height: 40,
                                  color: Color(0xF2061163),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                                loading: _loadingButton1,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                getJsonField(
                                        rowGetNodeResponse, r'''$..model''')
                                    .toString(),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                              child: Text(
                                getJsonField(
                                        rowGetNodeResponse, r'''$..uptime''')
                                    .toString(),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    FutureBuilder<dynamic>(
                      future: getNodetwoCall(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                          );
                        }
                        final rowGetNodetwoResponse = snapshot.data;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                              child: Icon(
                                Icons.settings_outlined,
                                color: Color(0xFF6D0002),
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() => _loadingButton2 = true);
                                  try {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Node2Widget(),
                                      ),
                                    );
                                  } finally {
                                    setState(() => _loadingButton2 = false);
                                  }
                                },
                                text: getJsonField(
                                        rowGetNodetwoResponse, r'''$..name''')
                                    .toString(),
                                options: FFButtonOptions(
                                  width: 100,
                                  height: 40,
                                  color: Color(0xF2061163),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                                loading: _loadingButton2,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                              child: Text(
                                getJsonField(
                                        rowGetNodetwoResponse, r'''$..model''')
                                    .toString(),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(50, 30, 0, 0),
                              child: Text(
                                getJsonField(
                                        rowGetNodetwoResponse, r'''$..uptime''')
                                    .toString(),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    setState(() => _loadingButton3 = true);
                    try {
                      Navigator.pop(context);
                    } finally {
                      setState(() => _loadingButton3 = false);
                    }
                  },
                  text: 'Return Home',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                  loading: _loadingButton3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
