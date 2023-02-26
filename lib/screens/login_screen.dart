import 'package:flutter/material.dart';
import 'package:pmsna1/widgets/loading_modal_widgets.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isLoading=false;

final txtEmail = TextFormField(
  decoration: const InputDecoration(
    label: Text('Email User'),
    border: OutlineInputBorder()
  ),
);
final txtPass = TextFormField(
  decoration: const InputDecoration(
    label: Text('Password'),
    border: OutlineInputBorder()
  ),
);
final spaceHorizontal = SizedBox(height: 10,);



final btnGoggle = SocialLoginButton(buttonType: SocialLoginButtonType.google, onPressed:(){}, );
final btnFacebook = SocialLoginButton(buttonType: SocialLoginButtonType.facebook, onPressed: (){},);
final btnGitHub = SocialLoginButton(buttonType: SocialLoginButtonType.github, onPressed: (){});



final imgLogo = Image.asset('assets/logo.png', height: 200,);

  @override
  Widget build(BuildContext context) {
    
    final btnEmail = SocialLoginButton(
      buttonType: SocialLoginButtonType.generalLogin, 
      onPressed:() {
        isLoading = true;
        setState(() {});
        Future.delayed(Duration(milliseconds: 4000)).then((value){
          isLoading=false;
          setState(() {});
          Navigator.pushNamed(context, '/dash');
          });
      },
    );

    final txtRegister = Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child:   TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/register');
      }, 
      child: const Text('Crear cuenta',
      style: TextStyle(fontSize: 18, 
      decoration: TextDecoration.underline)
      ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: .5,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/fondo.jpg')
                )
            ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                      txtEmail,
                      spaceHorizontal,
                      txtPass,
                      spaceHorizontal,
                      btnEmail,
                      spaceHorizontal,
                      btnFacebook,
                      spaceHorizontal,
                      btnGoggle,
                      spaceHorizontal,
                      btnGitHub,
                      spaceHorizontal,
                      txtRegister
                  ],
                ),
                Positioned(top: 50,child: imgLogo,)
              ],
            ),
          ),
    ),
          isLoading ? const LoadingModalWidget() : Container()
        ],
      )
  );
  }
}