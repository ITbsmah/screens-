import 'package:flutter/material.dart';

class FifthQuestion extends StatefulWidget {
  @override
  _FifthQuestionState createState() => _FifthQuestionState();
}

class _FifthQuestionState extends State<FifthQuestion> {
  TextEditingController nameEditingController;
  TextEditingController titleEditingController;
  TextEditingController ageEditingController;

  TextEditingController passwordEditingController;
  TextEditingController rePasswordEditingController;


  TextEditingController emailEditingController;
  TextEditingController urlEditingController;

  String radioItem = '';
  
  bool isChecked = false ;

  @override
  void initState() {
    nameEditingController = new TextEditingController();
    titleEditingController = new TextEditingController();
    ageEditingController = new TextEditingController();
    passwordEditingController = new TextEditingController();
    rePasswordEditingController = new TextEditingController();
    emailEditingController = new TextEditingController();
    urlEditingController = new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameEditingController.dispose();
    titleEditingController.dispose();
    ageEditingController.dispose();
    passwordEditingController.dispose();
    rePasswordEditingController.dispose();
    emailEditingController.dispose();
    urlEditingController.dispose();
    super.dispose();
  }



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
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Flexible(
                        flex: 2,child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                      controller: nameEditingController,
                            validator: (value) {
                              if (value.trim().isEmpty ) {
                                return "This Field Cannot be empty";
                              }
                              return null;
                            },
                      decoration: InputDecoration(
                            border: new UnderlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "*Name",
                      ),
                    ),
                        )),
                    Flexible(flex: 2,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: titleEditingController,
                        decoration: InputDecoration(
                          border: new UnderlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Title",
                        ),
                      ),
                    )),
                    Flexible(flex: 1 , child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: ageEditingController,
                        validator: (value) {
                          if (value.trim().isEmpty ) {
                            return "This Field Cannot be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: new UnderlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "*Age",
                        ),
                      ),
                    )),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Flexible(
                        flex: 2,child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                      controller: passwordEditingController,
                      decoration: InputDecoration(
                            border: new UnderlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Password",
                      ),
                    ),
                        )),
                    Flexible(flex: 2,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: rePasswordEditingController,
                        decoration: InputDecoration(
                          border: new UnderlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Repeat password",
                        ),
                      ),
                    )),

                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Flexible(
                        flex: 2,child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                      controller: emailEditingController,
                      decoration: InputDecoration(
                            border: new UnderlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Email",
                      ),
                    ),
                        )),
                    Flexible(flex: 2,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: urlEditingController,
                        decoration: InputDecoration(
                          border: new UnderlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Url",
                        ),
                      ),
                    )),

                  ],
                ),

                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Gender"),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text("Male"),
                                SizedBox(height: 2,),
                                Radio(value: 'Male', groupValue: radioItem, onChanged: (value){
                                  setState(() {
                                    radioItem = value;
                                  });
                                })
                              ],
                            ),
                            Column(
                              children: [
                                Text("Female"),
                                SizedBox(height: 2,),
                                Radio(value: 'Female', groupValue: radioItem, onChanged: (value){
                                  setState(() {
                                    radioItem = value;
                                  });
                                })
                              ],
                            ),
                            Column(
                              children: [
                                Text("Unspecified"),
                                SizedBox(height: 2,),
                                Radio(value: 'Unspecified', groupValue: radioItem, onChanged: (value){
                                  setState(() {
                                    radioItem = value;
                                  });
                                })
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  children: [
                    Checkbox(value: isChecked, onChanged: (value){
                      setState(() {
                        isChecked = value ;
                      });
                    }),
                    Text("Accept Term")
                  ],  
                  ),
                ),

                Center(
                  child: RaisedButton(
                    child: Text("Submit"),
                    onPressed: (){
                      _formKey.currentState.validate();
                    },
                  ),

                )
              ],
            ),
          ),
        ));
  }
}
