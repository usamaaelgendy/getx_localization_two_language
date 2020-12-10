import 'package:get/get.dart';
import 'package:get_localization/utils/langs/ar.dart';
import 'package:get_localization/utils/langs/en.dart';

class Translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
