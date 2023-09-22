import 'package:burgan_ui/components/brg_bullet_list_view/brg_bullet_list_view_builder.dart';
import 'package:burgan_ui/components/security_icon_widget/security_icon_widget_builder.dart';
import 'package:burgan_ui/components/spacer/spacer_builder.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class BrgReusableWidgetRegisterer {
  static final registry = JsonWidgetRegistry.instance;

  init() {
    registry.registerCustomBuilder(
      SecurityIconWidgetBuilder.type,
      const JsonWidgetBuilderContainer(builder: SecurityIconWidgetBuilder.fromDynamic),
    );

    registry.registerCustomBuilder(
      SpacerBuilder.type,
      const JsonWidgetBuilderContainer(builder: SpacerBuilder.fromDynamic),
    );

    registry.registerCustomBuilder(
      BrgBulletListViewBuilder.type,
      const JsonWidgetBuilderContainer(builder: BrgBulletListViewBuilder.fromDynamic),
    );
  }
}
