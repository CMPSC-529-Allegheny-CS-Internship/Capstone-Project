import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

Future<ApiCallResponse> getNodeOneCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get node one',
    apiUrl: 'https://api.mockaroo.com/api/7ed34070?count=4&key=72513f10',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getNodeTwoCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get node two',
    apiUrl: 'https://api.mockaroo.com/api/e7c5a760?count=1&key=72513f10',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getNodeThreeCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get node three',
    apiUrl: 'https://api.mockaroo.com/api/1a015540?count=1&key=72513f10',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getNodeFourCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get node four',
    apiUrl: 'https://api.mockaroo.com/api/3bd199e0?count=1&key=72513f10',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> postNodesCall() {
  final body = '''
{"nodes":[{"id":1,"name":"Node2","version":"0.74", "model":1.2, "status":true,"ip_address":"141.111.224.210"},
{"id":2,"name":"Node3","version":"0.63","model":1.4, "status":false,"ip_address":"175.51.225.62"}]}''';
  return ApiManager.instance.makeApiCall(
    callName: 'post nodes',
    apiUrl: 'http://demo6986843.mockable.io/',
    callType: ApiCallType.POST,
    headers: {},
    params: {},
    body: body,
    bodyType: BodyType.JSON,
    returnBody: true,
  );
}

Future<ApiCallResponse> getClusterCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get cluster',
    apiUrl: 'http://demo6986843.mockable.io/',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getClusterInfoCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'getClusterInfo',
    apiUrl: 'http://demo2892292.mockable.io/clusterinfo',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}
