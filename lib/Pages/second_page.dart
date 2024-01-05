import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/widgets/row_widget.dart';
import 'package:test/widgets/underline_container.dart';

import '../widgets/elevtated_button_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
          "Company profile",
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
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Please, review and confirm',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const RowWidget(text1 :"Name" , text2: 'Loboutou transport',),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"Street name"),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"Street number"),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"PoBox" , text2: 'BP40'),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"City" , text2: 'Dabou'),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"State"),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"Zip Code"),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"Country" , text2: 'Cote devoir'),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"Email" , text2:"leboutout@yahoo.fr"),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"Type" , text2: "National"),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"Telephone" ,text2: "07051484"),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 15,),
              const RowWidget(text1 :"Fax"),
              const SizedBox(height: 2,),
              const UnderlineContainer(),
              const SizedBox(height: 80,),
              ElevatedButtonWidget(onpressed: (){},text: 'Modify',color: Colors.black54,),
              ElevatedButtonWidget(text: 'Confirm', onpressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
