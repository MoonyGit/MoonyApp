import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart' hide Image;
import 'package:flutter_cube/flutter_cube.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/widgets/constrained_page.dart';
import 'package:moony_app/common/domain/connectivity/usecase/connectivity_use_case.dart';
import 'package:moony_app/common/domain/location/usecase/geolocation_use_case.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/main/resources/router.dart' as main_router;

/// Class to define Home page dependencies by dependency injection
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        <Constraint>[
          NoInternetConstraint(Get.find<IsConnectedUseCase>().call()),
          NoLocationConstraint(
            Get.find<GeolocationActivatedUseCase>().call(),
          )
        ],
      ),
      fenix: true,
    );
  }
}

/// ViewModel Home controller
class HomeController extends ConstrainedController
    with GetSingleTickerProviderStateMixin {
  /// Constructor
  HomeController(List<Constraint> constraints) : super(constraints);

  final String _earthObjectSurfaceName = "surface";
  final String _earthObjectTexturePath = 'assets/images/home/earth_tex.jpg';
  final double _earthObjectRadius = 0.485;
  final int _earthObjectAnimationDurationMs = 30000;
  final String _earthObjectName = "earth";
  final Vector3 _earthObjectScale = Vector3(10.0, 10.0, 10.0);

  /// Earth 3d object
  late final Object _earthObj = Object(
    name: _earthObjectName,
    scale: _earthObjectScale,
  ).also((Object it) {
    _generateSphereObject(
      parent: it,
      name: _earthObjectSurfaceName,
      radius: _earthObjectRadius,
      backfaceCulling: true,
      lighting: true,
      texturePath: _earthObjectTexturePath,
    );
  });

  /// 3d scene
  Scene? scene3d;

  /// Earth animation
  late AnimationController _earthAnimationController;

  @override
  void onInit() {
    super.onInit();
    _earthAnimationController = AnimationController(
      duration: Duration(milliseconds: _earthObjectAnimationDurationMs),
      vsync: this,
    )
      ..addListener(() {
        _earthObj.rotation.y = _earthAnimationController.value * 360;
        _earthObj.updateTransform();
        scene3d?.update();
      })
      ..repeat();
  }

  /// Call this method from page
  Future<void> onSceneCreated(Scene scene) async {
    scene3d = scene;
    scene.world.add(_earthObj);
  }

  /// Call this method from page, on planet clicked
  void onPlanetTap() {
    Get.offNamed(main_router.Router.mainPage);
    Logger.d("PLANET CLICKED");
  }

  @override
  void onClose() {
    _earthAnimationController.dispose();
    super.onClose();
  }

  /// Methode paste from flutter_cube earth example
  Future<void> _generateSphereObject({
    required Object parent,
    required String name,
    required double radius,
    required bool backfaceCulling,
    bool lighting = false,
    required String texturePath,
  }) async {
    final Mesh mesh =
        await _generateSphereMesh(radius: radius, texturePath: texturePath);
    parent.add(
      Object(
        name: name,
        mesh: mesh,
        backfaceCulling: backfaceCulling,
        lighting: lighting,
      ),
    );
    scene3d?.updateTexture();
  }

  /// Methode paste from flutter_cube earth example
  Future<Mesh> _generateSphereMesh({
    num radius = 0.5,
    int latSegments = 32,
    int lonSegments = 64,
    required String texturePath,
  }) async {
    final int count = (latSegments + 1) * (lonSegments + 1);
    final List<Vector3> vertices = List<Vector3>.filled(count, Vector3.zero());
    final List<Offset> texCoords = List<Offset>.filled(count, Offset.zero);
    final List<Polygon> indices =
        List<Polygon>.filled(latSegments * lonSegments * 2, Polygon(0, 0, 0));

    int i = 0;
    for (int y = 0; y <= latSegments; ++y) {
      final double v = y / latSegments;
      final double sv = sin(v * pi);
      final double cv = cos(v * pi);
      for (int x = 0; x <= lonSegments; ++x) {
        final double u = x / lonSegments;
        vertices[i] = Vector3(
          radius * cos(u * pi * 2.0) * sv,
          radius * cv,
          radius * sin(u * pi * 2.0) * sv,
        );
        texCoords[i] = Offset(1.0 - u, 1.0 - v);
        i++;
      }
    }

    i = 0;
    for (int y = 0; y < latSegments; ++y) {
      final int base1 = (lonSegments + 1) * y;
      final int base2 = (lonSegments + 1) * (y + 1);
      for (int x = 0; x < lonSegments; ++x) {
        indices[i++] = Polygon(base1 + x, base1 + x + 1, base2 + x);
        indices[i++] = Polygon(base1 + x + 1, base2 + x + 1, base2 + x);
      }
    }

    final Image texture = await loadImageFromAsset(texturePath);
    final Mesh mesh = Mesh(
      vertices: vertices,
      texcoords: texCoords,
      indices: indices,
      texture: texture,
      texturePath: texturePath,
    );
    return mesh;
  }
}
