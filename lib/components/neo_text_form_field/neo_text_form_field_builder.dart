import 'package:burgan_ui/components/neo_text_form_field/neo_text_form_field.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

part 'neo_text_form_field_builder.g.dart';

// STOPSHIP: Move to neo_ui package
@JsonWidget(type: 'neo_text_form_field')
abstract class _NeoTextFormFieldBuilder extends JsonWidgetBuilder {
  const _NeoTextFormFieldBuilder({
    required super.args,
  });

  @override
  NeoTextFormField buildCustom({
    required BuildContext context,
    required JsonWidgetData data,
    ChildWidgetBuilder? childBuilder,
    Key? key,
  });
}
