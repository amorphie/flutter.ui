import 'package:neo_ui/core_widgets/workflow_component_tree_builder/bloc/workflow_component_tree_builder_bloc.dart';
import 'package:neo_ui/core_widgets/workflow_component_tree_builder/network/workflow_components_network_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class WorkflowComponentTreeBuilder extends StatelessWidget {
  final WorkflowComponentsNetworkManager componentsNetworkManager;
  final String entityId;
  final String recordId;
  final Widget loadingWidget;
  final Widget errorWidget;

  const WorkflowComponentTreeBuilder({
    required this.componentsNetworkManager,
    required this.entityId,
    required this.recordId,
    this.loadingWidget = const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Center(child: CircularProgressIndicator())],
    ),
    this.errorWidget = const SizedBox.shrink(),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkflowComponentTreeBuilderBloc, WorkflowComponentTreeBuilderState>(
      bloc: WorkflowComponentTreeBuilderBloc(componentsNetworkManager)
        ..add(WorkflowComponentTreeBuilderEventFetchComponents(entityId: entityId, recordId: recordId)),
      builder: (context, state) {
        switch (state) {
          case WorkflowComponentTreeBuilderStateLoading _:
            return loadingWidget;
          case WorkflowComponentTreeBuilderStateLoaded _:
            return JsonWidgetData.fromDynamic(state.componentsMap).build(context: context);
          case WorkflowComponentTreeBuilderStateError _:
            return errorWidget;
        }
      },
    );
  }
}
