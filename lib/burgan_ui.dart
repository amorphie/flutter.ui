import 'package:burgan_ui/components/brg_reusable_widget_registerer.dart';

export 'package:burgan_ui/components/burgan_components.dart';

export 'util/brg_input_formatters.dart';
export 'util/brg_validator.dart';

class BurganUI {
  static init() {
    BrgReusableWidgetRegisterer().init();
  }
}
