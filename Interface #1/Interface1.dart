import 'package:flutter/material.dart';

class FirstQuestion extends StatefulWidget {
  @override
  _FirstQuestionState createState() => _FirstQuestionState();
}

class _FirstQuestionState extends State<FirstQuestion> {
   String dropdownValue = "Unicorn";
   String ageValue = "7";
   bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(elevation :0 ,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Card(elevation :0 ,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                          color:Colors.blue.shade700,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Bio", style: TextStyle(
                              color: Colors.white
                            ),),
                          )
                      ),
                    ),
                    Card(elevation :0 ,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                          color:Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Name",),
                                Text("Twilight Sparkle",),
                              ],
                            ),
                          )
                      ),
                    ),
                    Divider(height: 3,color: Colors.black,),
                    Card(elevation :0 ,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                          color:Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Type",),
                                Container(
                                  width: 140,
                                  child: DropdownButton<String>(
                                    // Just have to assign to a empty Container
                                    underline:Container(),
                                    value: dropdownValue,
                                    icon: Icon(Icons.arrow_drop_down_outlined),
                                    iconSize: 24,
                                    isExpanded: true,
                                    elevation: 16,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items:[
                                      "Unicorn",
                                      "Unicorn 2",
                                      "Unicorn 3",
                                      "Unicorn 4",
                                    ].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    Divider(height: 3,color: Colors.black,),
                    Card(elevation :0 ,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          color:Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Age",),
                                Container(
                                  width: 140,
                                  child: DropdownButton<String>(
                                    // Just have to assign to a empty Container
                                    underline:Container(),
                                    value: ageValue,
                                    icon: Icon(Icons.arrow_drop_down_outlined),
                                    iconSize: 24,
                                    isExpanded: true,
                                    elevation: 16,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        ageValue = newValue;
                                      });
                                    },
                                    items:[
                                      "7",
                                      "8",
                                      "9",
                                      "10",
                                    ].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    Card(elevation :0 ,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          color:Colors.blue.shade300,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Colors", style: TextStyle(
                                color: Colors.white
                            ),),
                          )
                      ),
                    ),
                    Card(elevation :0 ,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          color:Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Coat",),
                                Container(
                                  width: 160,
                                  height: 20,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    Card(elevation :0 ,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          color:Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Mane",),
                                Container(
                                  width: 160,
                                  height: 20,
                                  color: Colors.blueAccent,
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    Card(elevation :0 ,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          color:Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Has spots?",),
                                Container(
                                  width: 160,
                                  height: 20,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(_switchValue?"Yes":"No"),
                                      Switch(value: _switchValue, onChanged: (value){
                                        setState(() {
                                          _switchValue = value;
                                        });
                                      })
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    Card(elevation :0 ,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          color:Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Mane",),
                                Container(
                                  width: 160,
                                  height: 20,
                                  color: Colors.pinkAccent.shade100,
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
