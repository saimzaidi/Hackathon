import 'package:flutter/material.dart';
import 'package:saim/widgets/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 18, 37, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Maplewood Suites",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset("assets/images/Segmented Control.png"),
          ),
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView( // Wrap the body in SingleChildScrollView
        padding: EdgeInsets.all(10), // Padding for the whole body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(255, 255, 255, 0.07),
                  ),
                ),
                hintText: "Your Order?",
                hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                suffixIcon: Icon(
                  Icons.scanner,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 16, color: Colors.white.withOpacity(0.6)),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CategoryBox("burger 1.png"),
                    SizedBox(height: 8),
                    Text(
                      "Burgers",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CategoryBox("cake 1.png"),
                    SizedBox(height: 8),
                    Text(
                      "Dessert",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CategoryBox("taco 1.png"),
                    SizedBox(height: 8),
                    Text(
                      "Mexican",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CategoryBox("sushi.png"),
                    SizedBox(height: 8),
                    Text(
                      "Sushi",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Using PageView.builder to show pages
            Container(
              height: 200, // Set a height for the PageView
              child: PageView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    // width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Card.png"),
                        fit: BoxFit.cover, // Fit the image to cover the container
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40),
            Text("Fastest near you", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Image.asset("assets/images/Card (1).png")
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed, 
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Browse"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Carts"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: "Account"),
        ],
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
