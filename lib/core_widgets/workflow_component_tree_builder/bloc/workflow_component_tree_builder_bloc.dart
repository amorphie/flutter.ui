import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_core/core/network/models/neo_response.dart';
import 'package:neo_ui/core_widgets/workflow_component_tree_builder/network/workflow_components_network_manager.dart';

part 'workflow_component_tree_builder_event.dart';
part 'workflow_component_tree_builder_state.dart';

class WorkflowComponentTreeBuilderBloc
    extends Bloc<WorkflowComponentTreeBuilderEvent, WorkflowComponentTreeBuilderState> {
  final WorkflowComponentsNetworkManager networkManager;

  WorkflowComponentTreeBuilderBloc(this.networkManager) : super(WorkflowComponentTreeBuilderStateLoading()) {
    on<WorkflowComponentTreeBuilderEventFetchComponents>((event, emit) async {
      try {
        final response = await networkManager.fetchPageComponents(event.entityId, event.recordId);
        if (response.isSuccess) {
          final componentsResponse = (response as NeoSuccessResponse).data["data"]["stateManager"]["publicForm"];
          emit(
            WorkflowComponentTreeBuilderStateLoaded(componentsMap: jsonDecode(componentsResponse)),
          );
        } else {
          emit(
            WorkflowComponentTreeBuilderStateError(
              // TODO: Select error message based on current language
              errorMessage: (response as NeoErrorResponse).error.messages.firstOrNull?.title ?? "",
            ),
          );
        }
      } on Exception catch (e) {
        emit(WorkflowComponentTreeBuilderStateError(errorMessage: e.toString()));
      }
    });
  }
}
