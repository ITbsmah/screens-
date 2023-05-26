import 'package:flutter/material.dart';

class SecondQuestion extends StatefulWidget {
  @override
  _SecondQuestionState createState() => _SecondQuestionState();
}

class _SecondQuestionState extends State<SecondQuestion> {
  TextEditingController genderEditingController;
  TextEditingController fullNameEditingController;
  TextEditingController dateEditingController;
  TextEditingController ageEditingController;

  bool englishCheckBox = true;
  bool hindiCheckBox = false;
  bool otherCheckBox = true;
  bool termsCheckBox = false;
  List<String> ratingList =[
    "1",
    "2",
    "3",
    "4",
    "5",
  ];
  @override
  void initState() {
    genderEditingController = new TextEditingController(text: "Select Gender");
    fullNameEditingController = new TextEditingController();
    dateEditingController = new TextEditingController();
    ageEditingController = new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    genderEditingController.dispose();
    fullNameEditingController.dispose();
    dateEditingController.dispose();
    ageEditingController.dispose();
    super.dispose();
  }

  double sliderValue = 0.0 ;
  var _currencies = [
    "Select Gender",
    "Male",
    "Female"
  ];

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      decoration: new InputDecoration(
                          hintText: "Full name",
                          labelStyle:
                              new TextStyle(color: const Color(0xFF424242)),
                          border: new UnderlineInputBorder()),
                    controller: fullNameEditingController,
                    validator: (value) {
                      if (value.trim().isEmpty ) {
                        return "This Field Cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      decoration: new InputDecoration(
                          hintText: "Date of birth",
                          labelStyle:
                              new TextStyle(color: const Color(0xFF424242)),
                          border: new UnderlineInputBorder()),
                    controller: dateEditingController,
                    validator: (value) {
                      if (value.trim().isEmpty ) {
                        return "This Field Cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      decoration: new InputDecoration(
                          hintText: "Age",
                          labelStyle:
                              new TextStyle(color: const Color(0xFF424242)),
                          border: new UnderlineInputBorder()),
                    controller: ageEditingController,
                    validator: (value) {
                      if (value.trim().isEmpty ) {
                        return "This Field Cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    value: genderEditingController.text,
                    items: _currencies
                        .map((e) => DropdownMenuItem(
                              child: Text(e.toString()),
                              value: e,
                            ))
                        .toList(),
                    hint: Text('Gender'),
                    onChanged: (value) {
                      genderEditingController.text = value;
                    },
                    validator: (value) {
                      if (value.trim().isEmpty || value == "Select Gender") {
                        return "This Field Cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Number of family members"),
                ),

                Slider(value: sliderValue , onChanged: (value){
                  setState(() {
                    sliderValue = value;
                  });
                }, min: 0.0 , max: 10.0  , label: "sss",),

                Padding(
                  padding: const EdgeInsets.only(left : 20.0 , right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("0.0"),
                      Text("5.0"),
                      Text("10.0"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Rating"),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 34,
                      child: ListView.builder(itemBuilder: (ctx , index){
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top : 10.0 ,right:  20 , left: 20 , bottom:  10.0),
                            child: Text("${ratingList[index]}"),
                          ),
                        );
                      },itemCount: ratingList.length,scrollDirection: Axis.horizontal,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                ),
                CheckboxListTile(value: englishCheckBox, onChanged: (value){
                  setState(() {
                    englishCheckBox = value;
                  });
                },title: Text("English"),),
                CheckboxListTile(value: hindiCheckBox, onChanged: (value){
                  setState(() {
                    hindiCheckBox = value;
                  });
                },title: Text("Hindi"),),
                CheckboxListTile(value: otherCheckBox, onChanged: (value){
                  setState(() {
                    otherCheckBox = value;
                  });
                },title: Text("Other"),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Rate this site"),
                ),
                Container(
                  height: 20,
                  child: ListView.builder(itemBuilder: (ctx , index){
                    return Icon(Icons.star , color: Colors.yellow,);
                  } , itemCount: 5,scrollDirection: Axis.horizontal,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                ),
                CheckboxListTile(value: termsCheckBox, onChanged: (value){
                  setState(() {
                    termsCheckBox = value;
                  });
                },title: Text("I have read and agree to the terms and conditions"),),
                Row(
                  children: [
                    TextButton(onPressed: (){
                      _formKey.currentState.validate();
                    }, child: Text("Submit")),

                    TextButton(onPressed: (){
                    //  _formKey.currentState.validate();
                    }, child: Text("Reset")),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
