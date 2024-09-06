import 'package:flutter/material.dart';

class NoTicketPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        top: true,
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Récupère les dimensions de l'écran
            final screenWidth = constraints.maxWidth;
            final screenHeight = constraints.maxHeight;

            // Calcule des tailles adaptées à l'écran
            final buttonWidth = screenWidth * 0.7;
            final buttonHeight = screenHeight * 0.08;
            final buttonFontSize = screenHeight * 0.03;
            final buttonSpacing = screenHeight * 0.02;

            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Oupsss!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: buttonFontSize * 2, // Taille de police plus grande pour "Oupsss!"
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: buttonSpacing),
                    Text(
                      "Il semble que vous n'ayez pris aucun ticket pour le moment.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: buttonFontSize,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: buttonSpacing),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFFFFB222),
                        minimumSize: Size(buttonWidth, buttonHeight),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37),
                        ),
                        textStyle: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: buttonFontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                      ),
                      child: const Text('Retour'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
