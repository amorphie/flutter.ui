// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brg_bullet_list_view_builder.dart';

// **************************************************************************
// Generator: JsonWidgetLibraryBuilder
// **************************************************************************

// ignore_for_file: avoid_init_to_null
// ignore_for_file: deprecated_member_use

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_if_null_operators
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

class BrgBulletListViewBuilder extends _BrgBulletListViewBuilder {
  const BrgBulletListViewBuilder({required super.args});

  static const kType = 'brg_bullet_list_view';

  /// Constant that can be referenced for the builder's type.
  @override
  String get type => kType;

  /// Static function that is capable of decoding the widget from a dynamic JSON
  /// or YAML set of values.
  static BrgBulletListViewBuilder fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) =>
      BrgBulletListViewBuilder(
        args: map,
      );

  @override
  BrgBulletListViewBuilderModel createModel({
    ChildWidgetBuilder? childBuilder,
    required JsonWidgetData data,
  }) {
    final model = BrgBulletListViewBuilderModel.fromDynamic(
      args,
      registry: data.jsonWidgetRegistry,
    );

    return model;
  }

  @override
  BrgBulletListView buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final model = createModel(
      childBuilder: childBuilder,
      data: data,
    );

    final bulletListDecoded = _decodeBulletList(
      data: data,
    );

    return BrgBulletListView(
      bulletList: bulletListDecoded,
      key: key,
    );
  }
}

class JsonBrgBulletListView extends JsonWidgetData {
  JsonBrgBulletListView({
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
    required this.bulletList,
  }) : super(
          jsonWidgetArgs: BrgBulletListViewBuilderModel.fromDynamic(
            {
              'bulletList': bulletList,
              ...args,
            },
            args: args,
            registry: registry,
          ),
          jsonWidgetBuilder: () => BrgBulletListViewBuilder(
            args: BrgBulletListViewBuilderModel.fromDynamic(
              {
                'bulletList': bulletList,
                ...args,
              },
              args: args,
              registry: registry,
            ),
          ),
          jsonWidgetType: BrgBulletListViewBuilder.kType,
        );

  final dynamic bulletList;
}

class BrgBulletListViewBuilderModel extends JsonWidgetBuilderModel {
  const BrgBulletListViewBuilderModel(
    super.args, {
    required this.bulletList,
  });

  final dynamic bulletList;

  static BrgBulletListViewBuilderModel fromDynamic(
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
        '[BrgBulletListViewBuilder]: requested to parse from dynamic, but the input is null.',
      );
    }

    return result;
  }

  static BrgBulletListViewBuilderModel? maybeFromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    BrgBulletListViewBuilderModel? result;

    if (map != null) {
      if (map is String) {
        map = yaon.parse(
          map,
          normalize: true,
        );
      }

      if (map is BrgBulletListViewBuilderModel) {
        result = map;
      } else {
        registry ??= JsonWidgetRegistry.instance;
        map = registry.processArgs(map, <String>{}).value;
        result = BrgBulletListViewBuilderModel(
          args,
          bulletList: map['bulletList'],
        );
      }
    }

    return result;
  }

  @override
  Map<String, dynamic> toJson() {
    return JsonClass.removeNull({
      'bulletList': bulletList,
      ...args,
    });
  }
}

class BrgBulletListViewSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/burgan_ui/brg_bullet_list_view.json';

  static final schema = <String, Object>{
    r'$schema': 'http://json-schema.org/draft-07/schema#',
    r'$id': id,
    'title': 'BrgBulletListView',
    'type': 'object',
    'additionalProperties': false,
    'properties': {
      'bulletList': SchemaHelper.anySchema,
    },
  };
}
