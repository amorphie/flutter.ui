// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'neo_text_form_field_builder.dart';

// **************************************************************************
// Generator: JsonWidgetLibraryBuilder
// **************************************************************************

// ignore_for_file: deprecated_member_use

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

class NeoTextFormFieldBuilder extends _NeoTextFormFieldBuilder {
  const NeoTextFormFieldBuilder({required super.args});

  static const kType = 'neo_text_form_field';

  /// Constant that can be referenced for the builder's type.
  @override
  String get type => kType;

  /// Static function that is capable of decoding the widget from a dynamic JSON
  /// or YAML set of values.
  static NeoTextFormFieldBuilder fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) =>
      NeoTextFormFieldBuilder(
        args: map,
      );
  @override
  NeoTextFormFieldBuilderModel createModel({
    ChildWidgetBuilder? childBuilder,
    required JsonWidgetData data,
  }) {
    final model = NeoTextFormFieldBuilderModel.fromDynamic(
      args,
      registry: data.jsonWidgetRegistry,
    );

    return model;
  }

  @override
  NeoTextFormField buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final model = createModel(
      childBuilder: childBuilder,
      data: data,
    );

    return NeoTextFormField(
      dataKey: model.dataKey,
      hintText: model.hintText,
      initialData: model.initialData,
      key: key,
      labelText: model.labelText,
      maxLength: model.maxLength,
      obscureText: model.obscureText,
      padding: model.padding,
      prefixIconPath: model.prefixIconPath,
      validationErrorText: model.validationErrorText,
      validatorRegex: model.validatorRegex,
    );
  }
}

class JsonNeoTextFormField extends JsonWidgetData {
  JsonNeoTextFormField({
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
    required this.dataKey,
    this.hintText,
    this.initialData,
    required this.labelText,
    this.maxLength,
    this.obscureText = false,
    this.padding,
    this.prefixIconPath,
    this.validationErrorText,
    this.validatorRegex,
  }) : super(
          jsonWidgetArgs: NeoTextFormFieldBuilderModel.fromDynamic(
            {
              'dataKey': dataKey,
              'hintText': hintText,
              'initialData': initialData,
              'labelText': labelText,
              'maxLength': maxLength,
              'obscureText': obscureText,
              'padding': padding,
              'prefixIconPath': prefixIconPath,
              'validationErrorText': validationErrorText,
              'validatorRegex': validatorRegex,
              ...args,
            },
            args: args,
            registry: registry,
          ),
          jsonWidgetBuilder: () => NeoTextFormFieldBuilder(
            args: NeoTextFormFieldBuilderModel.fromDynamic(
              {
                'dataKey': dataKey,
                'hintText': hintText,
                'initialData': initialData,
                'labelText': labelText,
                'maxLength': maxLength,
                'obscureText': obscureText,
                'padding': padding,
                'prefixIconPath': prefixIconPath,
                'validationErrorText': validationErrorText,
                'validatorRegex': validatorRegex,
                ...args,
              },
              args: args,
              registry: registry,
            ),
          ),
          jsonWidgetType: NeoTextFormFieldBuilder.kType,
        );

  final String dataKey;

  final String? hintText;

  final String? initialData;

  final String labelText;

  final int? maxLength;

  final bool obscureText;

  final double? padding;

  final String? prefixIconPath;

  final String? validationErrorText;

  final String? validatorRegex;
}

class NeoTextFormFieldBuilderModel extends JsonWidgetBuilderModel {
  const NeoTextFormFieldBuilderModel(
    super.args, {
    required this.dataKey,
    this.hintText,
    this.initialData,
    required this.labelText,
    this.maxLength,
    this.obscureText = false,
    this.padding,
    this.prefixIconPath,
    this.validationErrorText,
    this.validatorRegex,
  });

  final String dataKey;

  final String? hintText;

  final String? initialData;

  final String labelText;

  final int? maxLength;

  final bool obscureText;

  final double? padding;

  final String? prefixIconPath;

  final String? validationErrorText;

  final String? validatorRegex;

  static NeoTextFormFieldBuilderModel fromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    final result = maybeFromDynamic(
      map,
      args: args,
      registry: registry,
    );

    if (result == null) {
      throw Exception(
        '[NeoTextFormFieldBuilder]: requested to parse from dynamic, but the input is null.',
      );
    }

    return result;
  }

  static NeoTextFormFieldBuilderModel? maybeFromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    NeoTextFormFieldBuilderModel? result;

    if (map != null) {
      if (map is String) {
        map = yaon.parse(
          map,
          normalize: true,
        );
      }

      if (map is NeoTextFormFieldBuilderModel) {
        result = map;
      } else {
        registry ??= JsonWidgetRegistry.instance;
        map = registry.processArgs(map, <String>{}).value;
        result = NeoTextFormFieldBuilderModel(
          args,
          dataKey: map['dataKey'],
          hintText: map['hintText'],
          initialData: map['initialData'],
          labelText: map['labelText'],
          maxLength: () {
            dynamic parsed = JsonClass.maybeParseInt(map['maxLength']);

            return parsed;
          }(),
          obscureText: JsonClass.parseBool(
            map['obscureText'],
            whenNull: false,
          ),
          padding: () {
            dynamic parsed = JsonClass.maybeParseDouble(map['padding']);

            return parsed;
          }(),
          prefixIconPath: map['prefixIconPath'],
          validationErrorText: map['validationErrorText'],
          validatorRegex: map['validatorRegex'],
        );
      }
    }

    return result;
  }

  @override
  Map<String, dynamic> toJson() {
    return JsonClass.removeNull({
      'dataKey': dataKey,
      'hintText': hintText,
      'initialData': initialData,
      'labelText': labelText,
      'maxLength': maxLength,
      'obscureText': false == obscureText ? null : obscureText,
      'padding': padding,
      'prefixIconPath': prefixIconPath,
      'validationErrorText': validationErrorText,
      'validatorRegex': validatorRegex,
      ...args,
    });
  }
}

class NeoTextFormFieldSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/burgankuwait/neo_text_form_field.json';

  static final schema = <String, Object>{
    r'$schema': 'http://json-schema.org/draft-07/schema#',
    r'$id': id,
    'title': 'NeoTextFormField',
    'type': 'object',
    'additionalProperties': false,
    'properties': {
      'dataKey': SchemaHelper.stringSchema,
      'hintText': SchemaHelper.stringSchema,
      'initialData': SchemaHelper.stringSchema,
      'labelText': SchemaHelper.stringSchema,
      'maxLength': SchemaHelper.numberSchema,
      'obscureText': SchemaHelper.boolSchema,
      'padding': SchemaHelper.numberSchema,
      'prefixIconPath': SchemaHelper.stringSchema,
      'validationErrorText': SchemaHelper.stringSchema,
      'validatorRegex': SchemaHelper.stringSchema,
    },
  };
}
