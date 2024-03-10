import 'package:flutter/material.dart';
import 'package:rating_system/Pages/profile_popup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../colors.dart';

class PostItemPage extends StatefulWidget {
  const PostItemPage({super.key});

  @override
  State<PostItemPage> createState() => _PostItemPageState();
}

class _PostItemPageState extends State<PostItemPage> {
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  String userName = "";
  String email = "";
  String password_ = "";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString('user_name') ?? "";
      email = prefs.getString('email') ?? "";
      password_ = prefs.getString('password_') ?? "";
      print('Loaded data to Home Page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
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
          ],
        ),
        actions: [
          Text(
            userName,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const ProfilePopUp();
                    },
                  );
                },
                icon: Icon(
                  Icons.person_pin,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: const Text(
                'Back to Home',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(160, 20),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20 ,horizontal: 300),
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text('Fill in the details',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Colors.teal
                ),),

                SizedBox(height: 15,),

                Divider(thickness: 1,endIndent: 50,indent: 50,),
                Container(

                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),

                  child: Column(children: [

                    // Add your TextField widgets here
                    DropdownButtonFormField<String>(
                      value: null, // Initial value or selected value
                      onChanged: (newValue) {
                        // Update the state with the new value
                      },
                      items: <String>['Mobile Phone', 'Device Type B', 'Device Type C']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: const Text('Device type'),
                    ),

                    SizedBox(height: 10,),
                    // DropdownButtonFormField<String>(
                    //   value: null, // Initial value or selected value
                    //   onChanged: (newValue) {
                    //     // Update the state with the new value
                    //   },
                    //   items: <String>['Brand A', 'Brand B', 'Brand C']
                    //       .map<DropdownMenuItem<String>>((String value) {
                    //     return DropdownMenuItem<String>(
                    //       value: value,
                    //       child: Text(value),
                    //     );
                    //   }).toList(),
                    //   hint: const Text('Brand'),
                    // ),
                    // ... More DropdownButtonFormField widgets for each dropdown

                    TextField(
                      controller: _modelController,
                      decoration: const InputDecoration(labelText: 'Item Type'),

                    ),
                    SizedBox(height: 10,),

                    TextField(
                      controller: _modelController,
                      decoration: const InputDecoration(labelText: 'Model'),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(labelText: 'Title'),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      textAlign: TextAlign.left,
                      controller: _descriptionController,
                      maxLines: 4,
                      decoration: const InputDecoration(labelText: 'Description'),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      controller: _priceController,
                      decoration: const InputDecoration(labelText: 'Price (Rs)'),
                    ),
                    // Add photo buttons and other form fields
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        5, // Max photo count
                        (index) => IconButton(
                          icon: Icon(
                            index == 0
                                ? Icons.add_a_photo
                                : Icons.photo_size_select_actual,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            // TODO: Implement image picker functionality
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),

                    // Contact details section
                    Text(userName),
                    Text(email),
                    const SizedBox(height: 24),

                    ElevatedButton(
                      onPressed: () {
                        // Implement the logic to post the item when the button is pressed
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal, // Set the background color
                      ),
                      child: const Text('Post Item',style: TextStyle(color: Colors.white),),
                    ),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
