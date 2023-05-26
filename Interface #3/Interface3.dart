import 'package:flutter/material.dart';

class ThirdQuestion extends StatefulWidget {
  @override
  _ThirdQuestionState createState() => _ThirdQuestionState();
}

class _ThirdQuestionState extends State<ThirdQuestion> {


  List<MatchDetails> matches = [
    MatchDetails(
      date: "Date",
      time: "Time",
      firstTeam: "",
      firstTeamImage: "",
      score: "Fixture",
      secondTeam: "",
      secondTeamImage: "",
      stadium: "Stadium"
    ),
    MatchDetails(
      date: "",
      time: "21:00",
      firstTeam: "ALQADISIYAH",
      firstTeamImage: "assets/images/First.png",
      score: "1-1",
      secondTeam: "Alpha",
      secondTeamImage: "assets/images/firstsecond.png",
      stadium: "Prince Saud Bin Jalawi Sport City Stadium (Al-Khobar)"
    ),
    MatchDetails(
        date: "",
        time: "21:00",
        firstTeam: "ALQADISIYAH",
        firstTeamImage: "assets/images/First.png",
        score: "1-1",
        secondTeam: "Alpha",
        secondTeamImage: "assets/images/firstsecond.png",
        stadium: "Prince Saud Bin Jalawi Sport City Stadium (Al-Khobar)"
    ),
    MatchDetails(
        date: "",
        time: "21:00",
        firstTeam: "ALQADISIYAH",
        firstTeamImage: "assets/images/First.png",
        score: "1-1",
        secondTeam: "Alpha",
        secondTeamImage: "assets/images/firstsecond.png",
        stadium: "Prince Saud Bin Jalawi Sport City Stadium (Al-Khobar)"
    ),
    MatchDetails(
        date: "Sunday 30-05-2021",
        time: "21:00",
        firstTeam: "ALQADISIYAH",
        firstTeamImage: "assets/images/First.png",
        score: "1-1",
        secondTeam: "Alpha",
        secondTeamImage: "assets/images/firstsecond.png",
        stadium: "Prince Saud Bin Jalawi Sport City Stadium (Al-Khobar)"
    ),
    MatchDetails(
        date: "",
        time: "21:00",
        firstTeam: "ALQADISIYAH",
        firstTeamImage: "assets/images/First.png",
        score: "1-1",
        secondTeam: "Alpha",
        secondTeamImage: "assets/images/firstsecond.png",
        stadium: "Prince Saud Bin Jalawi Sport City Stadium (Al-Khobar)"
    ),
    MatchDetails(
        date: "",
        time: "21:00",
        firstTeam: "ALQADISIYAH",
        firstTeamImage: "assets/images/First.png",
        score: "1-1",
        secondTeam: "Alpha",
        secondTeamImage: "assets/images/firstsecond.png",
        stadium: "Prince Saud Bin Jalawi Sport City Stadium (Al-Khobar)"
    ),
    MatchDetails(
        date: "",
        time: "21:00",
        firstTeam: "ALQADISIYAH",
        firstTeamImage: "assets/images/First.png",
        score: "1-1",
        secondTeam: "Alpha",
        secondTeamImage: "assets/images/firstsecond.png",
        stadium: "Prince Saud Bin Jalawi Sport City Stadium (Al-Khobar)"
    ),
  ];

  List<ResultDetails> results = [
    ResultDetails(
        teamImage: "",
        index: "",
        teamName:"",
        D: "D",
        GA: "GA",
        GF: "GF",
        GN: "+/-",
        L: "L",
        P: "P",
        Pts: "Pts",
        W: "W"
    ),
    ResultDetails(
      teamImage: "assets/images/First.png",
      teamName:"Alhilal",
      index: "1",
      D: "7",
      GA: "27",
      GF: "60",
      GN: "+33",
      L: "5",
      P: "30",
      Pts: "61",
      W: "18"
    ),ResultDetails(
      teamImage: "assets/images/firstsecond.png",
      teamName:"Alhilal",
        index: "2",
      D: "7",
      GA: "27",
      GF: "60",
      GN: "+33",
      L: "5",
      P: "30",
      Pts: "61",
      W: "18"
    ),ResultDetails(
      teamImage: "assets/images/First.png",
      teamName:"Alhilal",
        index: "3",
      D: "7",
      GA: "27",
      GF: "60",
      GN: "+33",
      L: "5",
      P: "30",
      Pts: "61",
      W: "18"
    ),ResultDetails(
      teamImage: "assets/images/firstsecond.png",
      teamName:"Alhilal",
        index: "4",
      D: "7",
      GA: "27",
      GF: "60",
      GN: "+33",
      L: "5",
      P: "30",
      Pts: "61",
      W: "18"
    ),ResultDetails(
      teamImage: "assets/images/First.png",
      teamName:"Alhilal",
        index: "5",
      D: "7",
      GA: "27",
      GF: "60",
      GN: "+33",
      L: "5",
      P: "30",
      Pts: "61",
      W: "18"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: MediaQuery.of(context).size.height,
                    child: Table(
                      // border: TableBorder.all(),
                      defaultVerticalAlignment: TableCellVerticalAlignment.top,
                      children: matches.map((e) => TableRow(
                          decoration: BoxDecoration(
                            color: e.firstTeam == ""?Colors.green : Colors.white,
                         //   border: Border.all(color: Colors.black)
                          ),

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(e.date),
                            ),
                          ]
                      ),).toList(),
                    ),
                  ),
                  Flexible(
                    child: Table(
                       border: TableBorder.all(),
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: matches.map((e) => TableRow(
                          decoration: BoxDecoration(
                            color: e.firstTeam == ""?Colors.green : Colors.white,
                            // border: Border.all(color: Colors.black)
                          ),

                          children: [

                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text(e.date),
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(e.time),
                            ),
                            e.firstTeamImage == ""?Text(e.firstTeam):Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(e.firstTeamImage , height: 20,width: 20,),
                                  Text(e.firstTeam),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(e.score),
                            ),e.secondTeamImage == ""?Text(e.secondTeam):Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(e.secondTeamImage, height: 20,width: 20,),
                                  Text(e.secondTeam),
                                ],
                              ),
                            ),Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(e.stadium),
                            ),
                          ]
                      ),).toList(),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("Standing of MBS League"),),
              ),
              Table(
                // border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: results.map((e) => TableRow(
                    decoration: BoxDecoration(
                      color: e.P == "P"?Colors.green : Colors.white,
                      // border: Border.all(color: Colors.black)
                    ),

                    children: [

                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Text(e.date),
                      // ),

                      e.teamImage == ""?Text(e.teamImage):Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(e.teamImage , height: 20,width: 20,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e.teamName),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e.P),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e.W),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e.D),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e.L),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e.GF),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e.GA),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e.GN),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(e.Pts),
                      ),
                    ]
                ),).toList(),
              )
            ],
          ),
        ));
  }
}
class MatchDetails{
  String date ;
  String time ;
  String firstTeam ;
  String firstTeamImage ;
  String score ;
  String secondTeam ;
  String secondTeamImage ;
  String stadium ;

  MatchDetails({this.date, this.time, this.firstTeam, this.score,
      this.secondTeam, this.stadium ,this.firstTeamImage , this.secondTeamImage});
}
class ResultDetails{
  String index;
  String teamImage ;
  String teamName ;
  String P;
  String W;
  String D;
  String L;
  String GF;
  String GA;
  String GN;
  String Pts;

  ResultDetails({this.index , this.teamImage, this.teamName, this.P, this.W, this.D, this.L,
      this.GF, this.GA, this.GN, this.Pts});
}