import 'package:burgan_ui/components/neo_network_dropdown_form_field/neo_network_dropdown_form_field.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

part 'neo_network_dropdown_form_field_builder.g.dart';

// STOPSHIP: Move to neo_ui package
@JsonWidget(type: 'neo_network_dropdown_form_field')
abstract class _NeoNetworkDropdownFormFieldBuilder extends JsonWidgetBuilder {
  const _NeoNetworkDropdownFormFieldBuilder({
    required super.args,
  });

  @override
  NeoNetworkDropdownFormField buildCustom({
    required BuildContext context,
    required JsonWidgetData data,
    ChildWidgetBuilder? childBuilder,
    Key? key,
  });
}
