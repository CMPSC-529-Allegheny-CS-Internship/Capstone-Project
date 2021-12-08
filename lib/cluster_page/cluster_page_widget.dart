import '../backend/api_requests/api_calls.dart';
import '../cluster_page2/cluster_page2_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../node1/node1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClusterPageWidget extends StatefulWidget {
  const ClusterPageWidget({
    Key key,
    this.name,
    this.version,
    this.uuid,
    this.dateAndTime,
  }) : super(key: key);

  final String name;
  final String version;
  final String uuid;
  final String dateAndTime;

  @override
  _ClusterPageWidgetState createState() => _ClusterPageWidgetState();
}

class _ClusterPageWidgetState extends State<ClusterPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
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
        final clusterPageGetClusterResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              backgroundColor: Color(0xFF00004B),
              iconTheme: IconThemeData(color: Color(0xFFE3F2FD)),
              automaticallyImplyLeading: false,
              leading: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageWidget(),
                    ),
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              actions: [],
              elevation: 4,
            ),
          ),
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: Align(
              alignment: AlignmentDirectional(0, -0.1),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.05, -0.6),
                    child: FutureBuilder<ApiCallResponse>(
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
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Text(
                                      valueOrDefault<String>(
                                        getJsonField(
                                                containerGetClusterResponse
                                                    .jsonBody,
                                                r'''$.clusters[0].name''')
                                            .toString(),
                                        'name',
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Color(0xFF00004B),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Status:',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                getJsonField(
                                                        containerGetClusterResponse
                                                            .jsonBody,
                                                        r'''$.clusters[0].status''')
                                                    .toString(),
                                                'name',
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 25,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Model:',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            getJsonField(
                                                    containerGetClusterResponse
                                                        .jsonBody,
                                                    r'''$.clusters[0].model''')
                                                .toString(),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 25,
                                            ),
                                          ),
                                        )
                                      ],
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 85,
                                height: 50,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Text(
                                    'Name',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.title3.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 85,
                                height: 50,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Text(
                                    'Version',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.title3.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 85,
                                height: 50,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Text(
                                    'IP',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.title3.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
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
                        final listViewGetClusterInfoResponse = snapshot.data;
                        return Builder(
                          builder: (context) {
                            final nodes = (getJsonField(
                                            listViewGetClusterInfoResponse
                                                .jsonBody,
                                            r'''$.nodes''')
                                        ?.toList() ??
                                    [])
                                .take(4)
                                .toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: nodes.length,
                              itemBuilder: (context, nodesIndex) {
                                final nodesItem = nodes[nodesIndex];
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Node1Widget(
                                              name: getJsonField(
                                                      nodesItem, r'''$.name''')
                                                  .toString(),
                                              ipAddress: getJsonField(nodesItem,
                                                      r'''$.ip_address''')
                                                  .toString(),
                                              serialNo: getJsonField(nodesItem,
                                                      r'''$.serialNo''')
                                                  .toString(),
                                              uptime: getJsonField(nodesItem,
                                                      r'''$.uptime''')
                                                  .toString(),
                                              managementIP: getJsonField(
                                                      nodesItem,
                                                      r'''$.managementIP''')
                                                  .toString(),
                                            ),
                                          ),
                                        );
                                      },
                                      text:
                                          getJsonField(nodesItem, r'''$.name''')
                                              .toString(),
                                      options: FFButtonOptions(
                                        width: 85,
                                        height: 40,
                                        color: Color(0xFF00007A),
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
                                    ),
                                    Container(
                                      width: 85,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          getJsonField(
                                                  nodesItem, r'''$.version''')
                                              .toString(),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 85,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          getJsonField(nodesItem,
                                                  r'''$.ip_address''')
                                              .toString(),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Warning'),
                                content: Text(
                                    'You will be adding 4 nodes. Are you sure?'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      Navigator.pop(alertDialogContext);
                                      await Navigator.pushAndRemoveUntil(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child: ClusterPage2Widget(),
                                        ),
                                        (r) => false,
                                      );
                                      ;
                                    },
                                    child: Text('Confirm'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        text: 'Add Nodes',
                        options: FFButtonOptions(
                          width: 130,
                          height: 20,
                          color: Color(0xA78D0808),
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
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
