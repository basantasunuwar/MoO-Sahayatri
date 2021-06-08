import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/AppSignIn.dart';
import 'package:flutter_ecommerce_app/models/SignUpModel.dart';

class AppSingUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;
    final _signUpKey = GlobalKey<FormState>();
    final emailReg = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final model = SignUpModel();

    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: Form(
            key: _signUpKey,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 300,
                        height: 30,
                        alignment: Alignment.center,
                        // child: new Text(
                        //   "MoO Sahayatri",
                        //   style: new TextStyle(
                        //       color: Colors.red,
                        //       fontSize: 25,
                        //       fontFamily: 'Roboto-Light.ttf',
                        //       fontWeight: FontWeight.bold),
                        // ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: TextFormField(
                              showCursor: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF2F3F5),
                                hintStyle: TextStyle(
                                  color: Color(0xFF666666),
                                  fontFamily: defaultFontFamily,
                                  fontSize: defaultFontSize,
                                ),
                                hintText: "First Name",
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Name can not be empty';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                model.firstName = value;
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            flex: 1,
                            child: TextFormField(
                                showCursor: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFF2F3F5),
                                  hintStyle: TextStyle(
                                    color: Color(0xFF666666),
                                    fontFamily: defaultFontFamily,
                                    fontSize: defaultFontSize,
                                  ),
                                  hintText: "Last Name",
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Last Name cannot be empty';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  model.lastName = value;
                                }),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        showCursor: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Color(0xFF666666),
                            size: defaultIconSize,
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          hintStyle: TextStyle(
                              color: Color(0xFF666666),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize),
                          hintText: "Phone Number",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Pleasse enter your Email or Phone No ';
                          } else if (!emailReg.hasMatch(value)) {
                            return 'Enter valid email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          model.email = value;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          showCursor: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.code,
                              color: Color(0xFF666666),
                              size: defaultIconSize,
                            ),
                            fillColor: Color(0xFFF2F3F5),
                            hintStyle: TextStyle(
                              color: Color(0xFF666666),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize,
                            ),
                            hintText: "Invitation Code",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter the invitation code';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            model.invitationCode = value;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.info_outline,
                                color: Color(0xFF666666),
                                size: defaultIconSize,
                              ),
                              Text(
                                " Leave empty if you don't have Invitation Code",
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontFamily: defaultFontFamily,
                                  fontSize: defaultFontSize,
                                  fontStyle: FontStyle.normal,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          padding: EdgeInsets.all(17.0),
                          onPressed: () {
                            //have to add contents after sign in

                            if (_signUpKey.currentState.validate()) {
                              _signUpKey.currentState.save();
                              Scaffold.of(_signUpKey.currentContext)
                                  .showSnackBar(SnackBar(
                                      content: Text("You can now sign in ")));
                            }
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins-Medium.ttf',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          color: Color(0xFFBC1F26),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0),
                              side: BorderSide(color: Color(0xFFBC1F26))),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Already have an account? ",
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppSignIn()),
                            );
                          },
                          child: Container(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Color(0xFFAC252B),
                                fontFamily: defaultFontFamily,
                                fontSize: defaultFontSize,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
