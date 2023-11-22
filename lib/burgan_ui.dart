import 'package:neo_ui/components/brg_reusable_widget_registerer.dart';

export 'components/burgan_components.dart';
export 'core_widgets/core_widgets.dart';
export 'util/brg_input_formatters.dart';
export 'util/brg_validator.dart';

class BurganUI {
  static void init() {
    BrgReusableWidgetRegisterer().init();
  }
}
