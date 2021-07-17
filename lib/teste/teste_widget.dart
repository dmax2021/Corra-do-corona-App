import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TesteWidget extends StatefulWidget {
  TesteWidget({Key key}) : super(key: key);

  @override
  _TesteWidgetState createState() => _TesteWidgetState();
}

class _TesteWidgetState extends State<TesteWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment(25.06, -2.49),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 12),
                          child: TextFormField(
                            controller: textController1,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Insira o destino',
                              hintStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Field is required';
                              }

                              return null;
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.96, -1.5),
                        child: IconButton(
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          iconSize: 30,
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment(163.58, 27.02),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 12),
                          child: TextFormField(
                            controller: textController2,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Insira o destino',
                              hintStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Field is required';
                              }

                              return null;
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.96, -1.5),
                        child: IconButton(
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          iconSize: 30,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: FlutterFlowGoogleMap(
                      initialLocation: LatLng(13.106061, -59.613158),
                      markerColor: GoogleMarkerColor.yellow,
                      mapType: MapType.normal,
                      style: GoogleMapStyle.night,
                      initialZoom: 14,
                      allowInteraction: true,
                      allowZoom: true,
                      showZoomControls: true,
                      showLocation: true,
                      showCompass: true,
                      showMapToolbar: true,
                      showTraffic: true,
                      centerMapOnMarkerTap: true,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
