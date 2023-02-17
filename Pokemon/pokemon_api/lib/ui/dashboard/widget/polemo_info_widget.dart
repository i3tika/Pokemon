
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_fonts.dart';
import '../../../core/theme/app_images.dart';

class PokemonInfoWidget extends StatelessWidget {
  const PokemonInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
        [Container(
          width: 300,
          height: 74,
          decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(top: 21,left: 15),
                child: Text('Jinglepuff',style: GoogleFonts.poppins(
                          textStyle: AppFonts.w500s18),),
              ),
              
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200,top: 15),
          child: Image.asset(AppImages.pkmon,width: 100,height: 100,),
        ),
      ],
    );
  }
}
