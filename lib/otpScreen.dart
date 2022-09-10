import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class otpScreen extends StatefulWidget {
  const otpScreen({Key? key}) : super(key: key);

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text('verify Screen',
          style: TextStyle(
            color:  Colors.white,
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(

                  'Otp Sent To 123456789', style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20
                ),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width:64 ,
                      height: 68,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        onChanged: (value){
                          if(value.length==1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        style: TextStyle(
                            color: Colors.white, fontSize: 30
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(
                      width:64 ,
                      height: 68,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        onChanged: (value){
                          if(value.length==1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        style: TextStyle(
                            color: Colors.white, fontSize: 30
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(
                      width:64 ,
                      height: 68,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        onChanged: (value){
                          if(value.length==1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        style: TextStyle(
                            color: Colors.white, fontSize: 30
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(
                      width:64 ,
                      height: 68,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        onChanged: (value){
                          if(value.length==1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        style: TextStyle(
                            color: Colors.white, fontSize: 30
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black
                        ),
                      ),
                    )

                  ],
                )),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      ' Didnt Recieve Otp ', style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20
                    ),),
                    TextButton(onPressed: (){}, child:Text('Resend Otp',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20) ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Verify and Create',
            style: TextStyle(fontSize: 20,color: Colors.white),),
          style: ElevatedButton.styleFrom(
              elevation: 4,
              primary: Colors.black,
              padding: EdgeInsets.all(20)
          ),
        ),
      ),
    );
  }
}
