import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
       return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -120,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1QGxEM0qVOLy2fnd5YVckB1PlspYLpZDApw150YmF1wUIEw-9KwxBwuzlcUxHAfacJc0&usqp=CAU"
              ),
            ),
            Positioned(
              bottom: -820,
              left: -700,
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Eo_circle_cyan_blank.svg/1024px-Eo_circle_cyan_blank.svg.png"
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "asset/image/logo.png",
                  width: size.width * 0.4,
                  height: size.height * 0.25,
                ),
                Text(
                  "Welcome To KMUTNB",
                  style: TextStyle(
                    color: Colors.amber[800],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  "https://images.unsplash.com/photo-1484662020986-75935d2ebc66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",
                  width: size.width * 0.9,
                ),
                SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[800],
                    shape: StadiumBorder(),
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  onPressed: (){
                    print("Complete");
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[800],
                    shape: StadiumBorder(),
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                  ),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  onPressed: (){
                    print("Thank You");
                  },
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}