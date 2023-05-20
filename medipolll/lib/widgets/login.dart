import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medipolll/widgets/background_image.dart';
import 'package:medipolll/widgets/password-input.dart';
import 'package:medipolll/widgets/tabs_screen.dart';
import 'package:medipolll/widgets/text-input.dart';


/*enum authProblems { UserNotFound, PasswordNotValid, NetworkError }

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _displayNameValid = true;
  bool _passwordValid = true;
  bool signUp = true;
  bool logging = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Stack(
      children:[
        BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
     // key: _scaffoldKey,
      //resizeToAvoidBottomInset: true,
            body:SingleChildScrollView(
              child:SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: <Widget>[
                    new SizedBox(
                      height: 50,
                    ),
                    new Container(
                      width: 950,
                      height: 140,
                      color: Colors.white,
                    //  child: new Image.asset('assets/images/logo.png'),
                      alignment: Alignment.center,
                    ),
                   new SizedBox(
                      height: 20,
                    ),
                    buildLoginUI(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
            ))]);
  }

  Container buildLoginUI() {
    return new Container(
      child: Column(
        children: [
          buildUsernameField(),
          SizedBox(
            height: 10,
          ),
          buildPasswordField(),
          SizedBox(
            height: 10,
          ),
          buildLoginButton(),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Forgotten your login details?",
                style: TextStyle(color: Colors.grey),
              ),
              GestureDetector(
                onTap: () => print('null'),
                child: Text("Get Help",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(children: <Widget>[
            SizedBox(
              width: 30,
            ),
            Expanded(
                child: Divider(
                  color: Colors.grey,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text("OR", style: TextStyle(color: Colors.grey)),
            ),
            Expanded(
                child: Divider(
                  color: Colors.grey,
                )),
            SizedBox(
              width: 30,
            ),
          ]),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Container buildUsernameField(){
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      width: queryData.size.width / 5 * 4,
      height: 50,
      child: TextField(
          controller: displayNameController,
          decoration: InputDecoration(
            icon: Icon(Icons.mail),
            hintText: "Username",
            hintStyle: TextStyle(color: Colors.black),
            errorText: _displayNameValid ? null : "Invalid username!",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
            ),
          ),
          style: TextStyle(
            color: Colors.black,
          )),
    );
  }

  Container buildPasswordField() {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      width: queryData.size.width / 5 * 4,
      height: 50,
      child: TextField(
          obscureText: true,
          controller: passwordController,
          decoration: InputDecoration(
            icon: Icon(Icons.password),
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.black),
            errorText: _passwordValid ? null : "Invalid password!",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
            ),
          ),
          style: TextStyle(
            color: Colors.black,
          )),
    );
  }

  Container buildLoginButton() {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
        color: Colors.blue,
        width: queryData.size.width / 5 * 2,
        height: 50,
        child: ElevatedButton(
          //color: Colors.blue,
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => TabScreen()));
          },
          child: Text(
            'Log In',
            style: TextStyle(color: Colors.white,fontSize: 22),
          ),
        ));
  }
}  .....İlk login sayfan.....*/






/*class LogInPage extends StatefulWidget {
  const LogInPage({Key?key}):super(key: key);
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State <LogInPage> {
  final _formkey=GlobalKey<FormState>();
  bool _isLogin=false;
  String email='';
  String password='';
  String username='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('email')
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !_isLogin? TextFormField(
                key: ValueKey('username'),
                decoration: InputDecoration(hintText: 'enter username'),
                validator: (value){
                  if(value.toString().length<3){
                    return 'username is so small';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  setState(() {
                    username=value!;
                  });
                },
              )
                  :Container(),

              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: 'enter email'),
              ),

              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(hintText: 'enter password'),
              ),
              SizedBox(height: 10,),
              Container
                (width: double.infinity,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()){
                      _formkey.currentState!.save();
                      signup(email, password);
                    }
                  },
                      child:_isLogin?Text('login'):Text('sign up'))),
              SizedBox(height: 10,),

              TextButton(
                  onPressed: (){
                    setState(() {
    _isLogin=!_isLogin;
    if(_isLogin==_isLogin){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TabScreen()));
    }
    else{
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LogInPage()),
    );};
    });
                  },
                  child: _isLogin
                      ?Text('Don t have account')
                     :Text('Already Signed up?Login')),
              ],
          )
      ),
    );
  }
}*/

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: Center(
                      child: Text(
                        'Ankara Medipol Üniversitesi ',
                        style: TextStyle(fontSize:32,fontWeight:FontWeight.w700,color:Colors.grey[50],fontFamily:'Raleway'),
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 42),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.envelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,

                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Şifre',
                              inputAction: TextInputAction.done,

                            ),
                            Center(
                            child:Text(
                              'Parolanızı mı unuttunuz?',
                              style: TextStyle(color:Colors.white54,fontSize:21,),
                            ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            RoundedButton(
                              buttonText: 'Giriş',
                        ),
                            SizedBox(
                              height: 70,
                            ),
                           /* Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                    BorderSide(color: Colors.white, width: 1),
                                  )),*/
                              /*child: Text(
                                'CreateNewAccount',
                                style: kBodyText,
                              ),*/

                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key?key,
    required this.buttonText, }) :
        super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => TabScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          buttonText,
          style: TextStyle(fontSize:21,color:Colors.white),
        ),
      ),
    ));
  }
}


/*class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  Future<FirebaseApp> _initializeFirebase()async{
    FirebaseApp firebaseApp =await Firebase.initializeApp();
    return firebaseApp;
  }
  final _emailController=TextEditingController();
  final _passwordController = TextEditingController();
  bool showSpinner=false;

  FirebaseAuth auth =FirebaseAuth.instance;
  User? user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              //controller: _emailController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Enter Email',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              controller: _passwordController,
             // controller: _passwordController,
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter Password',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),

            Padding(padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () async{
                      setState(() {
                        //showSpinner = true;
                        showSpinner=true;
                      });
                      try{
                        UserCredential userCredential=await auth.signInWithEmailAndPassword(email: _emailController.text, password:_passwordController.text);
                        user = userCredential.user;
                        if(user!=null){
                          Navigator.pushNamed(context, "profile");
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      }
                      on FirebaseAuthException catch(e){
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided.');
                        }
                      }
                      catch(e)
                      {
                        print(e);
                      }
                      /*try {
                        UserCredential userCredential = await auth.signInWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        u
                        user = userCredential.user;
                        if(user != null)
                        {
                          Navigator.pushNamed(context, "profile");
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      }
                      on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided.');
                        }
                      }
                      catch(e)
                      {
                        print(e);
                      }*/


                    },
                    child: InkWell(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabScreen()));
                      },
                    )
                  ),
                )
            ),
            const SizedBox(
              height: 8.0,
            ),

            InkWell(
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'register');
              },
            ),

          ],
        ),
      );
  }
}*/