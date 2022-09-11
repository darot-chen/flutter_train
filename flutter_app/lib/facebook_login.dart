import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FacebookLoginScreen extends StatefulWidget {
  FacebookLoginScreen({Key? key}) : super(key: key);

  @override
  State<FacebookLoginScreen> createState() => _FacebookLoginScreenState();
}

class _FacebookLoginScreenState extends State<FacebookLoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        hideKeyboard(context);
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset(
                    "asset/facebook_bg.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        label: 'Email',
                        onSaved: (value) {
                          setState(() {
                            email = value ?? '';
                          });
                        },
                      ),
                      Divider(
                        height: 0,
                        thickness: 1,
                        color: Colors.black,
                      ),
                      CustomTextField(
                        label: 'Password',
                        onSaved: (value) {
                          setState(() {
                            password = value ?? '';
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      formKey.currentState?.save();
                    },
                    child: Text("Login"),
                  ),
                ),
                OutlinedButton(
                  style: TextButton.styleFrom(
                      // backgroundColor: Colors.green,
                      ),
                  onPressed: () {},
                  child: Text("Green"),
                ),
                Text('Your Email: $email'),
                Text('Your Password: $password'),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Forget password?"),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Back"),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 120,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Divider(height: 0)),
                  Text('Or'),
                  Expanded(child: Divider(height: 0)),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue[100]),
                  ),
                  child: Text("Create new account"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  Container buildTextField() {
    return Container(
      height: 56,
      alignment: Alignment.centerLeft,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Phone number or password',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final void Function(String?)? onSaved;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      alignment: Alignment.centerLeft,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: label,
          hintText: label,
          border: InputBorder.none,
        ),
        onSaved: onSaved,
      ),
    );
  }
}
