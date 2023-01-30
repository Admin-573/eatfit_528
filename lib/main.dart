import 'package:flutter/material.dart';
import 'package:eatfit_528/menu.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String name="";
  String pass="";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),

              const Image(image: AssetImage('assets/login.jpeg'),
                fit: BoxFit.cover,
                width: 350,
                alignment: Alignment.topCenter,),

              const Image(image: AssetImage('assets/eatfit.jpeg'),
                  fit: BoxFit.cover,
                  width: 512,
                  alignment: Alignment.topCenter),

              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 32),
                child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Enter User Name",
                      labelText: "UserName"
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "UserName Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    name=value;
                    setState(() {});
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 32),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Enter Password",
                      labelText: "Password"
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "Password Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    pass=value;
                    setState(() {});
                  },
                ),
              ),

              const SizedBox(height: 200),

              ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const items()));
                }
              },
                  child: const Text('Sign In')),

              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
