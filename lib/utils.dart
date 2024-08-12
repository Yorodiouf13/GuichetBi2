import 'package:shared_preferences/shared_preferences.dart';
// import 'package:twilio_flutter/twilio_flutter.dart';

String v1 = DateTime.now().millisecondsSinceEpoch.toString(); // Variable globale

Future<String> generateUrl() async {
  String notificationUrl = 'https://www.guichetbi.com/idapp/$v1';
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('notificationUrl', notificationUrl);

  return notificationUrl; 
}

// Future<void> sendMessage(String message, String toNumber, String accountSid, String authToken, String twilioNumber) async {
//   final twilioFlutter = TwilioFlutter(
//     accountSid: accountSid,
//     authToken: authToken,
//     twilioNumber: twilioNumber,
//   );

//   try {
//     await twilioFlutter.sendWhatsApp(
//       toNumber: toNumber,
//       messageBody: message,
//     );
//     print('Message sent successfully');
//   } catch (error) {
//     print('Error sending message: $error');
//   }

// }
