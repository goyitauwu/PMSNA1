import 'package:flutter/material.dart';
import 'package:pmsna1/widgets/loading_modal_widgets.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
class LoginScreenTablet extends StatefulWidget {
  const LoginScreenTablet({super.key});

  @override
  State<LoginScreenTablet> createState() => _LoginScreenTabletState();
}

class _LoginScreenTabletState extends State<LoginScreenTablet> {
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
final spaceHorizontal2 = SizedBox(height: 60,);
final spaceVertical = SizedBox(width: 20,);



final btnGoggle = SocialLoginButton(buttonType: SocialLoginButtonType.google, onPressed:(){}, );
final btnFacebook = SocialLoginButton(buttonType: SocialLoginButtonType.facebook, onPressed: (){},);
final btnGitHub = SocialLoginButton(buttonType: SocialLoginButtonType.github, onPressed: (){});



final imgLogo = Image.asset('assets/logo.png', height: 200,);
final gif = Image.asset('assets/snoopy.gif');

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
                  image: AssetImage('assets/fondo1.jpg')
                )
            ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        spaceHorizontal2,
                        imgLogo,
                        spaceHorizontal,
                        txtEmail,
                        spaceHorizontal,
                        txtPass,
                        spaceHorizontal2,
                        gif
                      ],
                    ),
                    ),
                    spaceVertical,
                    Flexible(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                    ),
                  ],
                )
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