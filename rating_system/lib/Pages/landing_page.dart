import 'package:flutter/material.dart';
import 'package:rating_system/colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.appBarColor,
        toolbarHeight: 85.0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Rating Community',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 60,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                controller: searchController,
                onChanged: (String value) {
                  // Implement your filtering logic here if needed
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: Colors.white),
                  hintText: 'Search',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'View Details',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Share Your',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            )
          ],
        ),


        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 25),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/signup');
                  // Action when button is pressed
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 16,color: Colors.black,),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(120, 20),
                  backgroundColor: Colors.white, // Set the background color to green
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(30), // Set the border radius
                  ),
                ),
              ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
                // Action when button is pressed
              },
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 16,color: Colors.white,),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(120, 20),
                backgroundColor: Colors.blue, // Set the background color to green
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(30), // Set the border radius
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.all(25),
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/topImage.jpg'), // Replace with your image path
                    fit: BoxFit.cover, // Adjust the BoxFit as needed
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.srcOver,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Find the Best Products',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Discover the World of Reviews',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )

        ],
      ),

    );
  }
}
