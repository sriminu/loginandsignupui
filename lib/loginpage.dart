import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ SizedBox(height:300),
          Text('LOGIN', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Text('Welcome back! login with credentials'),
          SizedBox(height: 30,),
          Row(
            children: [ SizedBox(width: 20,),
              Text('Email',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ],
          ),
          SizedBox(height:10),
          TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.mail_outline,),
          labelText: 'EMAIL',
          hintText: 'Enter your Email', border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(150),


                )
              )),
          SizedBox(height: 10,),
          Row(
            children: [ SizedBox(width: 20,),
              Text('PASSWORD', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 15,),
          TextField(
            decoration: InputDecoration(
            prefixIcon: Icon(Icons.password),
            labelText: 'PASSWORD',
            hintText: 'Enter your password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(150)
            )
          ),),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () {

          }, child: Text('LOGIN')),
          SizedBox(height: 10,),
          Row(
            children: [SizedBox(width: 105,),
              Text('Dont have an account?',),
              TextButton(onPressed: () {}, child: Text('SIGN UP'))
            ],
          )
        ],

      )
    );
  }
}
