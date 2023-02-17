import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_api/core/theme/app_colors.dart';
import 'package:pokemon_api/core/theme/app_fonts.dart';
import 'package:pokemon_api/core/theme/app_images.dart';
import 'package:pokemon_api/ui/dashboard/widget/polemo_info_widget.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 59, left: 38),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('PokeApp',
                        style: GoogleFonts.poppins(textStyle: AppFonts.w700s48)),
                    const SizedBox(
                      width: 7,
                    ),
                    Image.asset(
                      AppImages.logo,
                      width: 53,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 179),
                child: Text(
                  'Pokemon list',
                  style: GoogleFonts.poppins(textStyle: AppFonts.w600s24),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 140),
                child: Text(
                  'Find the pokemon you want',
                  style: GoogleFonts.poppins(textStyle: AppFonts.w500s14),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38),
                child: Row(
                  children: [
                    SizedBox(
                      width: 254,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            label: Text(
                              'Search here ...',
                              style: GoogleFonts.poppins(
                                  textStyle: AppFonts.w500s12),
                            ),
                            filled: true,
                            fillColor: AppColors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    // IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.grey,
                            borderRadius: BorderRadius.circular(15)),
                        width: 50,
                        height: 50,
                        child: Icon(Icons.search,color: AppColors.textCr,),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 22,),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Column(
                  children: [
                    PokemonInfoWidget(),
                    SizedBox(height: 12,),
                    PokemonInfoWidget(),
                    SizedBox(height: 12,),
                    PokemonInfoWidget(),
                    SizedBox(height: 12,),
                    PokemonInfoWidget(),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
