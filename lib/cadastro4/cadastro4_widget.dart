import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cadastro4_model.dart';
export 'cadastro4_model.dart';

class Cadastro4Widget extends StatefulWidget {
  const Cadastro4Widget({super.key});

  @override
  State<Cadastro4Widget> createState() => _Cadastro4WidgetState();
}

class _Cadastro4WidgetState extends State<Cadastro4Widget> {
  late Cadastro4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cadastro4Model());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextFormField(
                      controller: _model.textController1,
                      focusNode: _model.textFieldFocusNode1,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Cidade',
                        hintText: 'Digite a cidade',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                      validator:
                          _model.textController1Validator.asValidator(context),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: [
                        'AC',
                        'AL',
                        'AP',
                        'AM',
                        'BA',
                        'CE',
                        'DF',
                        'ES',
                        'GO',
                        'MA',
                        'MT',
                        'MS',
                        'MG',
                        'PA',
                        'PB',
                        'PR',
                        'PE',
                        'PI',
                        'RJ',
                        'RN',
                        'RS',
                        'RO',
                        'RR',
                        'SC',
                        'SP',
                        'SE',
                        'TO'
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue = val),
                      width: 300.0,
                      height: 56.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'UF',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Alienação',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Switch.adaptive(
                          value: _model.switchValue ??= true,
                          onChanged: (newValue) async {
                            setState(() => _model.switchValue = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).accent1,
                          inactiveTrackColor:
                              FlutterFlowTheme.of(context).alternate,
                          inactiveThumbColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextFormField(
                      controller: _model.textController2,
                      focusNode: _model.textFieldFocusNode2,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Condição do Veículo',
                        hintText: 'Digite a condição do veículo',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                      validator:
                          _model.textController2Validator.asValidator(context),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextFormField(
                      controller: _model.textController3,
                      focusNode: _model.textFieldFocusNode3,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Link do Leião',
                        hintText: 'Digite o link do leilão',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                      validator:
                          _model.textController3Validator.asValidator(context),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Perfil');
                      },
                      text: 'Salvar',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 55.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
