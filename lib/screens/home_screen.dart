import 'package:flutter/material.dart';
import 'package:shared_group_52/screens/create_note_screen.dart';
import 'package:shared_group_52/screens/view_all_notes_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ViewAllNotesScreen(),
                  ),
                );
              },
              child: const Text("View All notes"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CreateNoteScreen(),
                  ),
                );
              },
              child: const Text("Create Note"),
            ),
          ],
        ),
      ),
    );
  }
}





// body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       SharedHelper.prefs.setBool('isLogin', false).then((value) {
      //         Navigator.pushReplacement(
      //           context,
      //           MaterialPageRoute(
      //             builder: (_) => const LoginScreen(),
      //           ),
      //         );
      //       });
      //     },
      //     child: const Text("Log out"),
      //   ),
      // ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       ElevatedButton(
      //           onPressed: () async {
      //             // var prefs = await SharedPreferences.getInstance();
      //             await SharedHelper.prefs.setString("name", "Flutter");
      //           },
      //           child: Text("set value")),
      //       ElevatedButton(
      //           onPressed: () async {
      //             // var prefs = await SharedPreferences.getInstance();
      //             var value = SharedHelper.prefs.getString("name");
      //           },
      //           child: Text("get value")),
      //       ElevatedButton(
      //           onPressed: () async {
      //             // var prefs = await SharedPreferences.getInstance();
      //             await SharedHelper.prefs.remove("name");
      //           },
      //           child: Text("remove value")),
      //     ],
      //   ),
      // ),
    