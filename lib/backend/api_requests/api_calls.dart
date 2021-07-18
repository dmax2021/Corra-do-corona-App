import 'api_manager.dart';

Future<dynamic> geocodingAPICall() => ApiManager.instance.makeApiCall(
      callName: 'Geocoding API',
      apiDomain: 'geocoding-backend.googleapis.com',
      apiEndpoint: '',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );

Future<dynamic> municipiosDePernambucoCall() => ApiManager.instance.makeApiCall(
      callName: 'Municipios de Pernambuco',
      apiDomain: 'servicodados.ibge.gov.br',
      apiEndpoint:
          'api/v3/malhas/estados/26?formato=application/vnd.geo+json&qualidade=maxima&intrarregiao=municipio',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
