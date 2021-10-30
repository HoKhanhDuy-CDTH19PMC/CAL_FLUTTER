import 'package:flutter/material.dart';
import 'widgets/cal_button.dart';
void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
late int soThuNhat;
late int soThuHai;
late String history='';
late String textDisplay='';
late String res;
late String operation;
  void btnOnClick(String btnValue){
    print(btnValue);
    if(btnValue =='C'){
      textDisplay='';
      soThuNhat=0;
      soThuHai=0;
      res='';
    }
    if(btnValue =='AC'){
      textDisplay='';
      soThuNhat=0;
      soThuHai=0;
      res='';
      history='';
    }
    else if(btnValue=='DEL'){
        res=textDisplay.substring(0,textDisplay.length-1);
    }else if(btnValue == '+'|| btnValue=='-'|| btnValue=='*' || btnValue=='/'){
      soThuNhat=int.parse(textDisplay);
      res='';
      operation = btnValue;
    } else if(btnValue=='='){
      soThuHai=int.parse(textDisplay);
        if(operation=='+'){
          res=(soThuNhat+soThuHai).toString();
          history=soThuNhat.toString()+operation.toString()+soThuHai.toString();
        }

      if(operation=='-'){
        res=(soThuNhat-soThuHai).toString();
        history=soThuNhat.toString()+operation.toString()+soThuHai.toString();
      }

      if(operation=='/'){
        res=(soThuNhat/soThuHai).toString();
        history=soThuNhat.toString()+operation.toString()+soThuHai.toString();
      }

      if(operation=='*'){
        res=(soThuNhat*soThuHai).toString();
        history=soThuNhat.toString()+operation.toString()+soThuHai.toString();
      }
    }else
      {
        res=int.parse(textDisplay+btnValue).toString();
      }
    setState(() {
      textDisplay=res;
    });
  }
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    // ẩn cái icon debug phía trên
    debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.cyan),
          home:Scaffold(
          appBar: AppBar(
                    title: new Center(child: new Text("CALCULATOR",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),),
          ),
            backgroundColor: Color(0xFF00B7D4),
            body: Container(
              //Column for let me get mainAxisAlignment
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 11, 0),
                        child: Text(
                          history,
                          style: TextStyle(fontSize: 20,
                              color:Colors.white70, fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      alignment: Alignment(1.0,1.0),
                    ),
                    Container(
                      child:Padding(
                        padding: EdgeInsets.all(11),
                        child: Text(
                          textDisplay,
                          style: TextStyle(fontSize: 26,
                              color:Colors.white, fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      alignment: Alignment(1.0,1.0),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Cal_Button(text:'NOT',fillColor: 0xFF00B7D4,textColor: 0xFF00B7D4,textSize: 21,
                        callBack: btnOnClick,),
                      Cal_Button(text:'NOT',fillColor: 0xFF00B7D4,textColor: 0xFF00B7D4,textSize: 21,
                        callBack: btnOnClick,),
                      Cal_Button(text:'C',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                      callBack: btnOnClick,),
                      Cal_Button(text:'DEL',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 21,
                        callBack: btnOnClick,),

                    ],
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Cal_Button(text:'9',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'8',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'7',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'*',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),



                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Cal_Button(text:'6',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'5',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'4',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'-',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),



                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Cal_Button(text:'3',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'2',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'1',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'+',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),



                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Cal_Button(text:'AC',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'0',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'=',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),
                        Cal_Button(text:'/',fillColor: 0xDD000000,textColor: 0xFFFFFFFF,textSize: 23,
                          callBack: btnOnClick,),



                      ],
                    ),
                     
                ],)
            ),
            )
  );

  }
}
