import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_register_task/util/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  @override
  Widget build(BuildContext context) {
    
    Widget _usernameTextField(){
      return Container(
        alignment: Alignment.centerLeft,
        child: const TextField(
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0
          ),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white60
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white
                  )
              ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red
                  )
              ),
              contentPadding: EdgeInsets.only(top: 20.0),
              prefixIcon: Icon(
                Icons.person_2_outlined,
                size: 22.0,
                color: Colors.white,
              ),
              hintText: 'Kullanıcı adınızı giriniz',
              hintStyle: whiteText
          ),
        ),
      );
    }
    Widget _passwordTextField(){
      return Container(
        alignment: Alignment.centerLeft,
        child: const TextField(
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0
          ),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white60
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white
                  )
              ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red
                  )
              ),
              contentPadding: EdgeInsets.only(top: 20.0),
              prefixIcon: Icon(
                Icons.lock_outline,
                size: 20.0,
                color: Colors.white,
              ),
              hintText: 'Parolanızı giriniz',
              hintStyle: whiteText
          ),

        ),
      );

    }
    Widget _signInButton(){
      return Container(
        alignment: Alignment.center,
        child: const OutlinedButton(
          style: ButtonStyle(

          ),
          onPressed: null,
          child: Text("Giriş Yap", style: whiteText,),
        ),
      );
    }


    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.orange,
                      Colors.red
                    ]
                  )
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Merhaba",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 64.0,
                            fontWeight: FontWeight.w100,
                          )
                        ),
                      ),
                      const SizedBox(height: 50.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                            "Giriş Yap",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic
                            )
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      _usernameTextField(),
                      const SizedBox(height: 20.0),
                      _passwordTextField(),
                      const SizedBox(height: 15.0),
                      _signInButton()

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}

