import 'package:burgan_ui/components/brg_bullet_list_view/brg_bullet_list_view_builder.dart';
import 'package:burgan_ui/components/security_icon_widget/security_icon_widget_builder.dart';
import 'package:burgan_ui/components/spacer/spacer_builder.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class BrgReusableWidgetRegisterer {
  static final registry = JsonWidgetRegistry.instance;

  init() {
    registry.registerCustomBuilder(
      SecurityIconWidgetBuilder.kType,
      const JsonWidgetBuilderContainer(builder: SecurityIconWidgetBuilder.fromDynamic),
    );

    registry.registerCustomBuilder(
      SpacerBuilder.kType,
      const JsonWidgetBuilderContainer(builder: SpacerBuilder.fromDynamic),
    );

    registry.registerCustomBuilder(
      BrgBulletListViewBuilder.kType,
      const JsonWidgetBuilderContainer(builder: BrgBulletListViewBuilder.fromDynamic),
    );
  }
}
