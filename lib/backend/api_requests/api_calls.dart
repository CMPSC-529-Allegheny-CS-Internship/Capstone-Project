import 'api_manager.dart';

Future<dynamic> getClusterCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'Get Cluster',
    apiUrl: 'https://6181639432c9e200178047d7.mockapi.io/cluster',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}

Future<dynamic> getClusterInfoCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'getClusterInfo',
    apiUrl: 'http://demo2066798.mockable.io/clusterinfo',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}

Future<dynamic> postnodeCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'postnode',
    apiUrl: 'https://6181639432c9e200178047d7.mockapi.io/node',
    callType: ApiCallType.POST,
    headers: {},
    params: {},
    bodyType: BodyType.JSON,
    returnResponse: true,
  );
}

Future<dynamic> getNodeCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get node',
    apiUrl: 'https://6181639432c9e200178047d7.mockapi.io/node',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}

Future<dynamic> getNodetwoCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get nodetwo',
    apiUrl: 'https://6181639432c9e200178047d7.mockapi.io/node2',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}
