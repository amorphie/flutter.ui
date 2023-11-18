part of 'workflow_component_tree_builder_bloc.dart';

sealed class WorkflowComponentTreeBuilderEvent extends Equatable {
  const WorkflowComponentTreeBuilderEvent();
}

class WorkflowComponentTreeBuilderEventFetchComponents extends WorkflowComponentTreeBuilderEvent {
  final String entityId;
  final String recordId;

  const WorkflowComponentTreeBuilderEventFetchComponents({required this.entityId, required this.recordId});

  @override
  List<Object?> get props => [entityId];
}
