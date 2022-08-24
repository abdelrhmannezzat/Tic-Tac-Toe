import 'package:flutter/material.dart';
import 'package:testing/Tic%20Tac%20toe/Tic%20resutl.dart';

bool val1(var l){
  bool end = false;
  for(int i = 0;i < 3;++i){
    if (l[i][0] != 0 && l[i][0] == l[i][1] && l[i][1] == l[i][2]){
      end = true;
      break;
    }
  }
  if (end){
    return true;
  }
  else{
    for(int i  = 0;i < 3;++i){
      if (l[0][i] != 0 && l[0][i] == l[1][i] && l[1][i] == l[2][i]){
        end = true;
        break;
      }
    }
    return end;
  }
}

bool val2(var l){
  if (l[0][0] == l[1][1] && l[1][1] == l[2][2] && l[0][0] != 0){
    return true;
  }
  else if (l[0][2] == l[1][1] && l[1][1] == l[2][0] && l[1][1] != 0){
    return true;
  }
  else {
    return false;
  }
}

class XO extends StatefulWidget {
  @override
  State<XO> createState() => _XOState();
}

class _XOState extends State<XO> {
  var matrix = [for(int row = 1;row <= 3;row++)[for(int col = 1;col <= 3;col++)0]];
  int counter = 0;
  int ?temp;
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    bool on = val1(matrix),two = val2(matrix);
    if (on || two || counter == 9) {
      temp = counter;
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ResultScreen(p: (temp == 9 && !(two || on)) ? 0 : (temp !% 2 == 1 ? 1 : 2))
        ),
      );
      matrix = [
        for(int row = 1; row <= 3; row++)[
          for(int col = 1; col <= 3; col++)0
        ]
      ];
      counter = 0;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (matrix[0][0] == 0){
                      matrix[0][0] = (counter % 2 == 1 ?1 : 2);
                      counter++;
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.green,
                  child: matrix[0][0] == 1?Image(
                    image: AssetImage('assets/images/X.png'),
                  ):(matrix[0][0] == 0?null:Image(image: AssetImage("assets/images/O.png"))),
                ),
              ),
              SizedBox(width: 3.0,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (matrix[0][1] == 0){
                      matrix[0][1] = (counter % 2 == 1 ?1 : 2);
                      counter++;
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.red,
                  child: matrix[0][1] == 1?Image(
                    image: AssetImage('assets/images/X.png'),
                  ):(matrix[0][1] == 0?null:Image(image: AssetImage("assets/images/O.png"))),
                ),
              ),
              SizedBox(width: 3.0,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (matrix[0][2] == 0){
                      matrix[0][2] = (counter % 2 == 1 ?1 : 2);
                      counter++;
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.yellow,
                  child: matrix[0][2] == 1?Image(
                    image: AssetImage('assets/images/X.png'),
                  ):(matrix[0][2] == 0?null:Image(image: AssetImage("assets/images/O.png"))),
                ),
              ),

            ],
          ),
          SizedBox(height: 3.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (matrix[1][0] == 0){
                      matrix[1][0] = (counter % 2 == 1 ?1 : 2);
                      counter++;
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.green,
                  child: matrix[1][0] == 1?Image(
                    image: AssetImage('assets/images/X.png'),
                  ):(matrix[1][0] == 0?null:Image(image: AssetImage("assets/images/O.png"))),
                ),
              ),
              SizedBox(width: 3.0,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (matrix[1][1] == 0){
                      matrix[1][1] = (counter % 2 == 1 ?1 : 2);
                      counter++;
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.red,
                  child: matrix[1][1] == 1?Image(
                    image: AssetImage('assets/images/X.png'),
                  ):(matrix[1][1] == 0?null:Image(image: AssetImage("assets/images/O.png"))),
                ),
              ),
              SizedBox(width: 3.0,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (matrix[1][2] == 0){
                      matrix[1][2] = (counter % 2 == 1 ?1 : 2);
                      counter++;
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.yellow,
                  child: matrix[1][2] == 1?Image(
                    image: AssetImage('assets/images/X.png'),
                  ):(matrix[1][2] == 0?null:Image(image: AssetImage("assets/images/O.png"))),
                ),
              ),

            ],
          ),
          SizedBox(height: 3.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (matrix[2][0] == 0){
                      matrix[2][0] = (counter % 2 == 1 ?1 : 2);
                      counter++;
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.green,
                  child: matrix[2][0] == 1?Image(
                    image: AssetImage('assets/images/X.png'),
                  ):(matrix[2][0] == 0?null:Image(image: AssetImage("assets/images/O.png"))),
                ),
              ),
              SizedBox(width: 3.0,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (matrix[2][1] == 0){
                      matrix[2][1] = (counter % 2 == 1 ? 1 : 2);
                      counter++;
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.red,
                  child: matrix[2][1] == 1?Image(
                    image: AssetImage('assets/images/X.png'),
                  ):(matrix[2][1] == 0?null:Image(image: AssetImage("assets/images/O.png"))),
                ),
              ),
              SizedBox(width: 3.0,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (matrix[2][2] == 0){
                      matrix[2][2] = (counter % 2 == 1 ?1 : 2) ;
                      counter++;
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.yellow,
                  child: matrix[2][2] == 1?Image(
                    image: AssetImage('assets/images/X.png'),
                  ):(matrix[2][2] == 0?null:Image(image: AssetImage("assets/images/O.png"))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
