import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_api/ui/dashboard/dashboard_screen.dart';

void main() {
  runApp(PokemonPage());
}

class PokemonPage extends StatelessWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
        );
  }
}

class Pokeball extends StatelessWidget {
  const Pokeball({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
