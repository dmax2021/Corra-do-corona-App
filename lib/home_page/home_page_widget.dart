import '../auth/auth_util.dart';
import '../contausuario/contausuario_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../recuperarconta/recuperarconta_widget.dart';
import '../termosecondicoes/termosecondicoes_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController insertloginController;
  TextEditingController insertpasswordController;
  bool insertpasswordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    insertloginController = TextEditingController();
    insertpasswordController = TextEditingController();
    insertpasswordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Container(
            width: 1000,
            height: 800,
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0.94, 0.09),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(40, 1, 40, 2),
                    child: TextFormField(
                      controller: insertloginController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'E-mail',
                        hintStyle: GoogleFonts.getFont(
                          'Lato',
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF3C2452),
                            width: 2,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF3C2452),
                            width: 2,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                      style: GoogleFonts.getFont(
                        'Lato',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      keyboardType: TextInputType.emailAddress,
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
                  alignment: Alignment(0, 0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment(-0.06, 0.26),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(40, 1, 40, 2),
                          child: TextFormField(
                            controller: insertpasswordController,
                            obscureText: !insertpasswordVisibility,
                            decoration: InputDecoration(
                              hintText: 'Senha',
                              hintStyle: GoogleFonts.getFont(
                                'Lato',
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF3C2452),
                                  width: 2,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF3C2452),
                                  width: 2,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => insertpasswordVisibility =
                                      !insertpasswordVisibility,
                                ),
                                child: Icon(
                                  insertpasswordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFFF9F5F5),
                                  size: 22,
                                ),
                              ),
                            ),
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Colors.white,
                              fontSize: 18,
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
                        alignment: Alignment(0.02, 0.61),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: InkWell(
                            onDoubleTap: () async {
                              if (!formKey.currentState.validate()) {
                                return;
                              }
                              final user = await signInWithEmail(
                                context,
                                insertloginController.text,
                                insertpasswordController.text,
                              );
                              if (user == null) {
                                return;
                              }
                            },
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ContausuarioWidget(),
                                  ),
                                );
                              },
                              text: 'Entrar',
                              options: FFButtonOptions(
                                width: 125,
                                height: 40,
                                color: Color(0x00FFFFFF),
                                textStyle: GoogleFonts.getFont(
                                  'Lato',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                elevation: 111111,
                                borderSide: BorderSide(
                                  color: Color(0xFF553BBA),
                                  width: 2,
                                ),
                                borderRadius: 100,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.76, 0.11),
                        child: Icon(
                          Icons.person,
                          color: Color(0xFFF9F5F5),
                          size: 24,
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.69, 0.47),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: RecuperarcontaWidget(),
                                ),
                              );
                            },
                            child: Text(
                              'Recuperar conta',
                              style: GoogleFonts.getFont(
                                'Lato',
                                color: Color(0xFF676767),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.06, 0.81),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      TermosecondicoesWidget(),
                                ),
                              );
                            },
                            child: Text(
                              'Criar conta',
                              style: GoogleFonts.getFont(
                                'Lato',
                                color: Color(0xFF676767),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.01, -0.77),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TermosecondicoesWidget(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/Logo_corra_do_corona2.png',
                            width: 220,
                            height: 220,
                            fit: BoxFit.cover,
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
      ),
    );
  }
}
