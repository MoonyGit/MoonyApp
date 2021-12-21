import 'package:flutter/material.dart' hide Orientation;
import 'package:flutter_cube/flutter_cube.dart';
import 'package:moony_app/common/base/widgets/constrained_page.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/home/presentation/home_controller.dart';
import 'package:moony_app/home/resources/assets.dart';

/// The home page
class HomePage extends ConstrainedPage<HomeController> {
  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 6,),),
                Image.asset(
                  AppAsset.splashLogo,
                  width: MediaQuery.of(context).size.width / 6,
                  height: MediaQuery.of(context).size.width / 6,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 10,
                  foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        AppTheme.secondary,
                        AppTheme.primary,
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Image.asset(earthSky),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 1.3,
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: InkWell(
                        onTap: controller.onPlanetTap,
                          child: Cube(
                        onSceneCreated: (Scene scene) {
                          controller.onSceneCreated(scene);
                        },
                      ),),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.width / 12, // 30
                      child: InkWell(
                        child: Image.asset(
                          AppAsset.moonyShadow,
                          width: MediaQuery.of(context).size.width / 5,
                          height: MediaQuery.of(context).size.width / 5,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
