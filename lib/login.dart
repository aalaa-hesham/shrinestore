import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('SHRINE'),
              ],
            ),
            const SizedBox(height: 120.0),
            // TODO: Remove filled: true values (103)
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                // TODO: Add a beveled rectangular border to CANCEL (103)
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                ElevatedButton(
                  child: const Text('NEXT'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   // TODO: Add text editing controllers (101)
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: ListView(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//           children: <Widget>[
//             const SizedBox(height: 80.0),
//             Column(
//               children: <Widget>[
//                 Image(image: NetworkImage('https://docs.growndiamondcorp.com/blog/09162016_043813Diamond123.jpg'),),
//                 const SizedBox(height: 16.0),
//                 const Text('SHRINE',
//                   style: Theme.of(context).textTheme.headlineSmall,),
//               ],
//             ),
//             const SizedBox(height: 120.0),
//             TextField(
//               controller: _usernameController,
//               decoration: const InputDecoration(
//                 filled: true,
//                 labelText: 'Username',
//               ),
//             ),
// // spacer
//             const SizedBox(height: 12.0),
// // [Password]
//             TextField(
//               controller: _passwordController,
//               decoration: const InputDecoration(
//                 filled: true,
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//             ),
//             OverflowBar(
//               alignment: MainAxisAlignment.end,
//               // TODO: Add a beveled rectangular border to CANCEL (103)
//               TextButton(
//                 child: const Text('CANCEL'),
//                 onPressed: () {
//                   _usernameController.clear();
//                   _passwordController.clear();
//                 },
//                 style: TextButton.styleFrom(
//                   foregroundColor: kShrineBrown900,
//                   shape: const BeveledRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(7.0)),
//                   ),
//                 ),
//               ),
//               children: <Widget>[
//         //        TextButton(
//          //         child: const Text('CANCEL'),
//       //            onPressed: () {
//                     // TODO: Clear the text fields (101)
//         //            _usernameController.clear();
//                //     _passwordController.clear();
//                //   },
//              //   ),
//                 // TODO: Add an elevation to NEXT (103)
//                 // TODO: Add a beveled rectangular border to NEXT (103)
//                 ElevatedButton(
//                   child: const Text('NEXT'),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     foregroundColor: kShrineBrown900,
//                     backgroundColor: kShrinePink100,
//                     elevation: 8.0,
//                     shape: const BeveledRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(7.0)),
//                     ),
//                   ),
//                // ElevatedButton(
//               //    child: const Text('NEXT'),
//               //    onPressed: () {
//                     // TODO: Show the next page (101)
//               //      Navigator.pop(context);
//             //      },
//              //     style: ElevatedButton.styleFrom(
//                //     foregroundColor: kShrineBrown900,
//                  //   backgroundColor: kShrinePink100,
//                    // elevation: 8.0,
//                //   ),

//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }