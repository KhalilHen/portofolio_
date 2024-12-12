
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Contact extends StatefulWidget {
//   @override
//   State<Contact> createState() => _ContactState();
// }

// class _ContactState extends State<Contact> {
//   final textColor = const Color(0xFFE0E0E0);
//   final _formKey = GlobalKey<FormState>();
  
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final messageController = TextEditingController();

//   @override
//   void dispose() {
//     nameController.dispose();
//     emailController.dispose();
//     messageController.dispose();
//     super.dispose();
//   }

//   void _sendEmail() async {
//     if (_formKey.currentState!.validate()) {
//       final Uri emailUri = Uri(
//         scheme: 'mailto',
//         path: 'khalilh.dev@gmail.com', // Replace with your email
//         query: encodeQueryParameters({
//           'subject': 'Contact Form Message from ${nameController.text}',
//           'body': 'From: ${nameController.text}\nEmail: ${emailController.text}\n\nMessage:\n${messageController.text}'
//         }),
//       );

//       if (await canLaunchUrl(emailUri)) {
//         await launchUrl(emailUri);
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Could not launch email client'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }

//   String? encodeQueryParameters(Map<String, String> params) {
//     return params.entries
//         .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
//         .join('&');
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final bool isMobile = screenWidth < 800;

//     return Container(
//       width: isMobile ? screenWidth : screenWidth / 2,
//       height: isMobile ? null : 500,
//       child: Form(
//         key: _formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text('Contact', style: TextStyle(fontSize: 30, color: textColor)),
//             const Padding(padding: EdgeInsets.all(25)),
//             TextFormField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//                 labelStyle: TextStyle(color: textColor),
//                 hintText: 'Khalil',
//                 border: OutlineInputBorder(),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your name';
//                 }
//                 return null;
//               },
//             ),
//             Padding(padding: EdgeInsets.all(25)),
//             TextFormField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 labelStyle: TextStyle(color: textColor),
//                 hintText: 'example@gmail.com',
//                 border: OutlineInputBorder(),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your email';
//                 }
//                 if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//                   return 'Please enter a valid email address';
//                 }
//                 return null;
//               },
//             ),
//             Padding(padding: EdgeInsets.all(25)),
//             TextFormField(
//               controller: messageController,
//               decoration: InputDecoration(
//                 labelText: 'Message',
//                 labelStyle: TextStyle(color: textColor),
//                 hintText: 'Your message here',
//                 border: OutlineInputBorder(),
//               ),
//               maxLines: 4,
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your message';
//                 }
//                 return null;
//               },
//             ),
//             ElevatedButton(
//               onPressed: _sendEmail,
//               child: Text('Submit'),
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
//                 padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//                   EdgeInsets.symmetric(horizontal: 50, vertical: 10),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }