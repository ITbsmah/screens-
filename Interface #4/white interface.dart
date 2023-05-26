import 'package:flutter/material.dart';

class ForthQuestion extends StatefulWidget {
  @override
  _ForthQuestionState createState() => _ForthQuestionState();
}

class _ForthQuestionState extends State<ForthQuestion> {
  TextEditingController nameEditingController;
  TextEditingController phoneEditingController;
  TextEditingController areaEditingController;
  TextEditingController addressEditingController;
  TextEditingController cityEditingController;
  TextEditingController stateEditingController;
  TextEditingController zipEditingController;
  TextEditingController emailEdittingController;
  TextEditingController birthdayEdittingController;


  @override
  void initState() {
    nameEditingController = new TextEditingController();
    phoneEditingController = new TextEditingController();
    areaEditingController = new TextEditingController(text: "Area");
    addressEditingController = new TextEditingController();
    cityEditingController = new TextEditingController();
    zipEditingController = new TextEditingController();
    stateEditingController = new TextEditingController(text: "States");
    emailEdittingController = new TextEditingController();
    birthdayEdittingController = new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameEditingController.dispose();
    phoneEditingController.dispose();
    areaEditingController.dispose();
    addressEditingController.dispose();
    cityEditingController.dispose();
    stateEditingController.dispose();
    zipEditingController.dispose();
    emailEdittingController.dispose();
    birthdayEdittingController.dispose();
    super.dispose();
  }

  double sliderValue = 0.0 ;
  var _currencies = [
    "Area",
    "Male",
    "Female"
  ];
  var _states = [
    "States",
    "State 1",
    "State 2",
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
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.person),
                      ),
                      Flexible(child: TextFormField(
                        controller: nameEditingController,
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field is required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                       //     filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Name",
                        //    fillColor: Colors.white70
                        ),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.phone),
                      ),
                      Container(width : 150,child: TextFormField(
                        controller: phoneEditingController,
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field is required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                       //     filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Phone",
                        //    fillColor: Colors.white70
                        ),
                      )),
                      Flexible(
                        child: Container(
                          height: 72,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButtonFormField<String>(
                              value: areaEditingController.text,
                              items: _currencies
                                  .map((e) => DropdownMenuItem(
                                child: Text(e.toString()),
                                value: e,
                              ))
                                  .toList(),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                //     filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "Area",
                                //    fillColor: Colors.white70
                              ),
                              onChanged: (value) {
                                areaEditingController.text = value;
                              },
                              validator: (value) {
                                if (value.trim().isEmpty || value == "Area") {
                                  return "This Field Cannot be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.location_on),
                      ),
                      Flexible(child: TextFormField(
                        controller: addressEditingController,
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field is required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          //     filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Address",
                          //    fillColor: Colors.white70
                        ),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.location_on , color: Colors.white,),
                      ),
                      Flexible(child: TextFormField(
                        controller: cityEditingController,
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field is required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          //     filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "City",
                          //    fillColor: Colors.white70
                        ),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.location_on , color: Colors.white,),
                      ),
                      Container(
                        height: 72,
                        width: 160,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField<String>(
                            value: stateEditingController.text,
                            items: _states
                                .map((e) => DropdownMenuItem(
                              child: Text(e.toString()),
                              value: e,
                            ))
                                .toList(),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              //     filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: "States",
                              //    fillColor: Colors.white70
                            ),
                            onChanged: (value) {
                              stateEditingController.text = value;
                            },
                            validator: (value) {
                              if (value.trim().isEmpty || value == "States") {
                                return "This Field Cannot be empty";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Flexible(child: TextFormField(
                        controller: zipEditingController,
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field is required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          //     filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "ZIP",
                          //    fillColor: Colors.white70
                        ),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.email),
                      ),
                      Flexible(child: TextFormField(
                        controller: emailEdittingController,
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field is required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          //     filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Email",
                          //    fillColor: Colors.white70
                        ),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.cake),
                      ),
                      Flexible(child: TextFormField(
                        controller: birthdayEdittingController,
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field is required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          //     filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Birthday",
                          //    fillColor: Colors.white70
                          suffixIcon: Icon(Icons.date_range_sharp)
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
