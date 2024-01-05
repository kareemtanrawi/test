import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/Pages/second_page.dart';

import '../widgets/elevtated_button_widget.dart';
import '../widgets/text_feild_widget.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "User profile",
          style: GoogleFonts.aBeeZee(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const TextFieldWidget(text: 'First Name'),
              const TextFieldWidget(text: 'Last Name'),
              const Row(
                children: [
                  Expanded(child: TextFieldWidget(text: 'Street Name')),
                  Expanded(child: TextFieldWidget(text: 'Street Number')),
                ],
              ),
              const Row(
                children: [
                  Expanded(child: TextFieldWidget(text: 'PoBox')),
                  Expanded(child: TextFieldWidget(text: 'City')),
                ],
              ),
              const Row(
                children: [
                  Expanded(child: TextFieldWidget(text: 'State')),
                  Expanded(child: TextFieldWidget(text: 'Zip Code')),
                ],
              ),
              const TextFieldWidget(text: 'Country'),
              const Row(
                children: [
                  Expanded(child: TextFieldWidget(text: 'Email')),
                  Expanded(child: TextFieldWidget(text: 'Profile')),
                ],
              ),
              const Row(
                children: [
                  Expanded(child: TextFieldWidget(text: 'Password')),
                  Expanded(child: TextFieldWidget(text: 'Confirmer Password')),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButtonWidget(
                    text: 'Add',
                    onpressed: () {},
                  )),
                  Expanded(
                      child: ElevatedButtonWidget(
                    text: 'Modify',
                    onpressed: () {},
                  )),
                  Expanded(
                      child: ElevatedButtonWidget(
                    text: 'Delete',
                    onpressed: () {},
                  )),
                ],
              ),
              ElevatedButtonWidget(
                text: 'Quary',
                onpressed: () {},
                color: Colors.black54,
              ),
              ElevatedButtonWidget(
                text: 'Next ->',
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                },
                // color: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
