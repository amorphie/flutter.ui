import 'package:neo_ui/components/brg_bullet_list_view/brg_bullet_list_view_builder.dart';
import 'package:neo_ui/components/neo_network_dropdown_form_field/neo_network_dropdown_form_field_builder.dart';
import 'package:neo_ui/components/neo_text_form_field/neo_text_form_field_builder.dart';
import 'package:neo_ui/components/security_icon_widget/security_icon_widget_builder.dart';
import 'package:neo_ui/components/spacer/spacer_builder.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class BrgReusableWidgetRegisterer {
  static final registry = JsonWidgetRegistry.instance;

  init() {
    registry
      ..registerCustomBuilder(
        SecurityIconWidgetBuilder.kType,
        const JsonWidgetBuilderContainer(builder: SecurityIconWidgetBuilder.fromDynamic),
      )
      ..registerCustomBuilder(
        SpacerBuilder.kType,
        const JsonWidgetBuilderContainer(builder: SpacerBuilder.fromDynamic),
      )
      ..registerCustomBuilder(
        BrgBulletListViewBuilder.kType,
        const JsonWidgetBuilderContainer(builder: BrgBulletListViewBuilder.fromDynamic),
      )
      ..registerCustomBuilder(
        NeoTextFormFieldBuilder.kType,
        const JsonWidgetBuilderContainer(builder: NeoTextFormFieldBuilder.fromDynamic),
      )
      ..registerCustomBuilder(
        NeoNetworkDropdownFormFieldBuilder.kType,
        const JsonWidgetBuilderContainer(builder: NeoNetworkDropdownFormFieldBuilder.fromDynamic),
      );
  }
}
