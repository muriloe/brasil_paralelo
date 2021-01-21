import 'package:brasil_paralelo/app/shared/models/content_status.enum.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:brasil_paralelo/app/modules/start/submodules/home/pages/content/content_controller.dart';
import 'package:brasil_paralelo/app/modules/start/submodules/home/home_module.dart';
import 'package:mockito/mockito.dart';

void main() {
  ContentController controller;
  initModule(HomeModule());

  setUp(() {
    controller = ContentController();
  });

  group('ContentController Test', () {
    test("Validete enum conversion (FREE)", () async {
      ContentStatus result = await controller.stringToContentEnum('FREE');
      expect(result, ContentStatus.FREE);
    });

    test("Validete enum conversion (PREMIUM)", () async {
      ContentStatus result = await controller.stringToContentEnum('PREMIUM');
      expect(result, ContentStatus.PREMIUM);
    });

    test("Validete enum conversion (RANDOMVALUE) should be enum PATRIOTA", () async {
      ContentStatus result = await controller.stringToContentEnum('RANDOMVALUE');
      expect(result, ContentStatus.PATRIOTA);
    });
  });
}
