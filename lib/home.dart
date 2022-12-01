import 'package:flutter/material.dart';
import 'package:geolocation/HomeProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<HomeProvider>(context,listen: false).getPosition();
                    },
                    child: Text("kjhgc"),
                  ),

                  SizedBox(height: 10,),

                  Text("${Provider.of<HomeProvider>(context,listen: true).lon} / ${Provider.of<HomeProvider>(context,listen: true).lat}"),

                  SizedBox(height: 10,),

                  Text("${Provider.of<HomeProvider>(context,listen: true).pl}")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
