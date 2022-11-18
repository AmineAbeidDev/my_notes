import 'package:flutter/material.dart';

const mainColor = Color.fromARGB(255, 33, 33, 33);
const lighterMainColor = Color.fromARGB(255, 50, 50, 50);
const darkerButtonColor = Color.fromARGB(255, 13, 115, 119);
const buttonColor = Color.fromARGB(255, 20, 255, 236);

// class LoginView extends StatefulWidget {
//   const LoginView({super.key});

//   @override
//   State<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   late final TextEditingController _email;
//   late final TextEditingController _password;

//   @override
//   void initState() {
//     _email = TextEditingController();
//     _password = TextEditingController();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _email.dispose();
//     _password.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.only(top: 120),
//         color: const Color.fromARGB(255, 62, 0, 255),
//         child: Column(
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                 color: Colors.white,
//               ),
//               width: 420,
//               height: 45,
//               margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: _email,
//                 decoration: const InputDecoration(
//                   hintText: 'email',
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                 color: Colors.white,
//               ),
//               width: 420,
//               height: 45,
//               margin: const EdgeInsets.fromLTRB(25, 15, 25, 0),
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: _password,
//                 decoration: const InputDecoration(
//                   hintText: 'password',
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
            // TextButton(
            //   onPressed: () {},
            //   child: const Text(
            //     'Skip',
            //     style: TextStyle(
            //       color: Color.fromARGB(255, 181, 255, 217),
            //       fontSize: 20,
            //     ),
            //   ),
            // ),
//           ],
//         ),
//       ),
// //     );
//   }
// }
