import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Node1Widget extends StatefulWidget {
  const Node1Widget({
    Key key,
    this.name,
    this.ipAddress,
    this.serialNo,
    this.uptime,
    this.managementIP,
  }) : super(key: key);

  final String name;
  final String ipAddress;
  final String serialNo;
  final String uptime;
  final String managementIP;

  @override
  _Node1WidgetState createState() => _Node1WidgetState();
}

class _Node1WidgetState extends State<Node1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF00004B),
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_outlined,
            color: FlutterFlowTheme.tertiaryColor,
            size: 30,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      endDrawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Shut Down',
                  options: FFButtonOptions(
                    width: 600,
                    height: 40,
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Source Sans Pro',
                      color: Color(0xFF00004B),
                      fontSize: 25,
                    ),
                    borderSide: BorderSide(
                      color: Color(0xFFECF1F8),
                      width: 2,
                    ),
                    borderRadius: 12,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Node Reboot'),
                            content:
                                Text('Please wait while the node reboots...'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Cancel'),
                              ),
                            ],
                          );
                        },
                      );
                      await getNodeOneCall();
                    },
                    text: 'Reboot',
                    options: FFButtonOptions(
                      width: 600,
                      height: 40,
                      color: Colors.white,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Source Sans Pro',
                        color: Color(0xFF00004B),
                        fontSize: 25,
                      ),
                      borderSide: BorderSide(
                        color: Color(0xFFECF1F8),
                        width: 2,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Edit Service Processor',
                    options: FFButtonOptions(
                      width: 600,
                      height: 40,
                      color: Colors.white,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Source Sans Pro',
                        color: Color(0xFF00007A),
                        fontSize: 25,
                      ),
                      borderSide: BorderSide(
                        color: Color(0xFFECF1F8),
                        width: 2,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: FutureBuilder<ApiCallResponse>(
            future: getClusterInfoCall(),
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
              final columnGetClusterInfoResponse = snapshot.data;
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 125,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFBFB),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            widget.name,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Roboto',
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Text(
                              getJsonField(
                                      columnGetClusterInfoResponse.jsonBody,
                                      r'''$.nodes[0].ip_address''')
                                  .toString(),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 40, 40, 40),
                    child: Icon(
                      Icons.thumb_up,
                      color: Color(0xFF006D18),
                      size: 100,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          'Uptime                ',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 100,
                        decoration: BoxDecoration(),
                      ),
                      Text(
                        widget.uptime,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.85, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                            child: Text(
                              'Management IP',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          decoration: BoxDecoration(),
                        ),
                        Text(
                          widget.managementIP,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.85, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                          child: Text(
                            'Serial Number    ',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 100,
                        decoration: BoxDecoration(),
                      ),
                      Text(
                        widget.serialNo,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}