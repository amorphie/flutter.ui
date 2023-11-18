import 'package:get_it/get_it.dart';
import 'package:neo_core/core/network/models/neo_http_call.dart';
import 'package:neo_core/neo_core.dart';

abstract class _Constants {
  static const endpointGetTransition = "get-transitions";
  static const pathParameterEntity = "ENTITY";
  static const pathParameterRecordId = "RECORD_ID";
}

class WorkflowComponentsNetworkManager {
  Future<NeoResponse> fetchPageComponents(String entityId, String recordId) async {
    try {
      final response = await GetIt.I<NeoNetworkManager>().call(
        NeoHttpCall(
          endpoint: _Constants.endpointGetTransition,
          pathParameters: {
            _Constants.pathParameterEntity: entityId,
            _Constants.pathParameterRecordId: recordId,
          },
        ),
      );
      return NeoResponse.success(response);
    } on NeoException catch (exception) {
      return NeoResponse.error(exception.error);
    }
  }
}
