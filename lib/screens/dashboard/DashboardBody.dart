import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(

      child: Column(



        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                width: (width/2)-25,
                height: 100,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Current Balance'),
                    Text('0', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,)
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //   color: Colors.black,
                    //   width: 1,
                    // )
                ),
              ),
              Container(
                width: (width/2)-25,
                height: 100,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Current Orders'),
                    Text('0', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,)
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //   color: Colors.black,
                    //   width: 1,
                    // )
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                width: (width/2)-25,
                height: 100,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Pendings Order'),
                    Text('0', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,)
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //   color: Colors.black,
                    //   width: 1,
                    // )
                ),
              ),
              Container(
                width: (width/2)-25,
                height: 100,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Complete Orders'),
                    Text('0', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,)
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //   color: Colors.black,
                    //   width: 1,
                    // )
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                width: (width/2)-25,
                height: 100,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Total Transaction'),
                    Text('0', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,)
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //   color: Colors.black,
                    //   width: 1,
                    // )
                ),
              ),
              Container(
                width: (width/2)-25,
                height: 100,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('Total Deposits'),
                    Text('0', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,)
                    ),
                  ],
                ),//#f5f7f6
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //   color: Colors.black,
                    //   width: 1,
                    // )
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
