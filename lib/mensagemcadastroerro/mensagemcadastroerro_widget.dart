import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MensagemcadastroerroWidget extends StatefulWidget {
  MensagemcadastroerroWidget({Key key}) : super(key: key);

  @override
  _MensagemcadastroerroWidgetState createState() =>
      _MensagemcadastroerroWidgetState();
}

class _MensagemcadastroerroWidgetState
    extends State<MensagemcadastroerroWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: Image.asset(
                                    'assets/images/',
                                    width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0.06, -0.57),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 105, 0, 0),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'assets/images/Logo_corra_do_corona2.png',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text(
                              'How Não! \\n',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                            child: Text(
                              'Seu cadastro não foi autorizado.',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 100, 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 215,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(24, 6, 20, 1),
                              child: Text(
                                'Não foi possível prosseguir com o cadastro da sua conta. Por favor certifique-se \\nde que as informações foram inseridas corretamente.\\n\\nPossíveis causas:\\nEndereço de e-mail Incorreto;\\nEndereço de e-mail já cadastrado;\\nSenha não contém números;\\nSenha contendo menos que seis dígitos;',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 170, 0, 1),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePageWidget(),
                              ),
                            );
                          },
                          text: 'Voltar',
                          options: FFButtonOptions(
                            width: 90,
                            height: 40,
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 100,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
