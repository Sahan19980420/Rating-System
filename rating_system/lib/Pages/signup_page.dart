import 'package:flutter/material.dart';

import '../Componants/glass_box.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool isObscure = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // margin: EdgeInsets.all(20),
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              image: DecorationImage(
                image: AssetImage(
                    'images/background.jpg'), // Replace with your image path
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
              child: Row(
                children: [
                  Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Roll the Carpet.!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 48),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/home');
                                // Action when button is pressed
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Text(
                                      'Skip the Signup',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 16,
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(170, 40),
                                backgroundColor: Colors
                                    .blue, // Set the background color to green
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30), // Set the border radius
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GlassBox(
                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Signup',
                                    style: TextStyle(
                                      fontSize: 36,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Glad you are back.!',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    controller: userNameController,
                                    onChanged: (String value) {
                                      // Implement your filtering logic here if needed
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'User Name',
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 15),
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
                                  SizedBox(
                                    height: 10,
                                  ),

                                  TextField(
                                    controller: emailController,
                                    onChanged: (String value) {
                                      // Implement your filtering logic here if needed
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Your Email',
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 15),
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
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    controller: passwordController,
                                    onChanged: (String value) {
                                      // Implement your filtering logic here if needed
                                    },
                                    obscureText:
                                    isObscure, // Set the obscureText property
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isObscure =
                                            !isObscure; // Toggle between show and hide password
                                          });
                                        },
                                        icon: Icon(
                                          isObscure
                                              ? Icons.visibility_off_rounded
                                              : Icons.remove_red_eye_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 15),
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
                                  SizedBox(
                                    height: 10,
                                  ),

                                  TextField(
                                    controller: confirmPasswordController,
                                    onChanged: (String value) {
                                      // Implement your filtering logic here if needed
                                    },
                                    obscureText:
                                    isObscure, // Set the obscureText property
                                    decoration: InputDecoration(
                                      hintText: 'Confirm your password',
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isObscure =
                                            !isObscure; // Toggle between show and hide password
                                          });
                                        },
                                        icon: Icon(
                                          isObscure
                                              ? Icons.visibility_off_rounded
                                              : Icons.remove_red_eye_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 15),
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
                                  SizedBox(
                                    height: 10,
                                  ),

                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 20),
                                      child: ElevatedButton(
                                        onPressed: () {

                                          // Action when button is pressed
                                        },
                                        child: const Text(
                                          'Signup',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(240, 40),
                                          backgroundColor: Colors
                                              .blue, // Set the background color to green
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                30), // Set the border radius
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 15,
                                  ),
                                  Divider(
                                    height: 2,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),

                                  Center(child: Image.asset('images/google.png',width: 240,)),

                                  SizedBox(
                                    height: 10,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Already Registered? ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),

                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pushNamed('/login');
                                        },
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )



                                  // Container(
                                  //   margin: EdgeInsets.all(10),
                                  //   width: 240,
                                  //   decoration: BoxDecoration(
                                  //     image: DecorationImage(
                                  //       image:/ Replace with your image path
                                  //       fit: BoxFit.cover, // Adjust the BoxFit as needed
                                  //     ),
                                  //   ),
                                  // )

                                ],
                              ),
                            ),
                            width: 500,
                            height: 600,
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
