import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'App_bar': 'Localizations',
          'Text_1': 'This is my function Translate on Getx',
        },
        'km_KH': {
          'App_bar': 'បកប្រែភាសា',
          'Text_1': 'នេះជាមុខងារបកប្រែនៅក្នុងGetX Flutter',
        },
        'vn_VN': {
          'App_bar': 'Dịch Tiếng',
          'Text_1': 'Cài này là chức năng trong dịch trong flutter GetX',
        }
      };
}
