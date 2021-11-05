import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            Container(
              width: double.infinity,
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/ic_header.jpeg"
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4)
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Best Hotels Ever",style: TextStyle(fontSize: 27,color: Colors.white),textAlign: TextAlign.center,),
                    SizedBox(height: 50,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.grey,),
                          hintText: "Search for hotels",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 18)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            //body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("Business Hotels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                  SizedBox(height: 30,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel1.jpeg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel2.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/ic_hotel3.jpeg", title: "Hotel 3"),
                        makeItem(image: "assets/images/ic_hotel4.jpeg", title: "Hotel 4"),
                        makeItem(image: "assets/images/ic_hotel5.jpeg", title: "Hotel 5")
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 18,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("Airport Hotels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                  SizedBox(height: 30,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel4.jpeg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel5.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/ic_hotel1.jpeg", title: "Hotel 3"),
                        makeItem(image: "assets/images/ic_hotel2.jpeg", title: "Hotel 4"),
                        makeItem(image: "assets/images/ic_hotel3.jpeg", title: "Hotel 5")
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 18,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("Resort hotels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                  SizedBox(height: 30,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel3.jpeg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel4.jpeg", title: "Hotel 2"),
                        makeItem(image: "assets/images/ic_hotel2.jpeg", title: "Hotel 3"),
                        makeItem(image: "assets/images/ic_hotel5.jpeg", title: "Hotel 4"),
                        makeItem(image: "assets/images/ic_hotel1.jpeg", title: "Hotel 5")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget makeItem({image, title}){
    return AspectRatio(
        aspectRatio: 1.05/1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2)
              ]
            )
          ),
          child: Container(
            alignment: Alignment.bottomLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(title,style: TextStyle(color: Colors.white,fontSize: 22),),
                SizedBox(width: 50,),
                Icon(Icons.favorite,color: Colors.red,),
              ],
            )
            ),
        ),

      ),
    );
  }
}
