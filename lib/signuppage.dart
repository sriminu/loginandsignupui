import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignupPageState();
}

class _SignupPageState extends State{
  @override
  Widget build(BuildContext context) {
  return Scaffold(body: Column(
    children: [SizedBox(height:300),
      Text('Sign Up',  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      SizedBox(height: 15,),
      Text('Create an Account, its free'),
      SizedBox(height: 30,),
      Row(
        children: [SizedBox(width: 20,),
          Text('Email',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        ],
      ),
      TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.mail_outline,),
          labelText: 'EMAIL',
          hintText: 'Enter your Email', border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(150),),
      ),
      ),
      SizedBox(height: 10,),
      Row(
        children: [ SizedBox(width: 20,),
          Text('Password',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
        ],
      ),
      TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.mail_outline,),
        labelText: 'Passwod',
        hintText: 'Enter your Password', border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(150),),
      ),
      ),
      SizedBox(height: 10,),
      Row(
        children: [SizedBox(width: 20,),
          Text('Confirm Password',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ],
      ),
      TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.mail_outline,),
        labelText: 'confirm password',
         border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(150),),
      ),
      ),
      SizedBox(height: 10,),
      ElevatedButton(onPressed: () {}, child: Text('Sign Up')),SizedBox(height: 10,),

      Row(
        children: [SizedBox(width: 105,),
          Text('Already have an account?'),  TextButton(onPressed: () {}, child: Text('Login'))
        ],
      ),

    ],
  ),

  );
  }
}