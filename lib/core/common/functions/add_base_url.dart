import 'package:charlot/core/constants/endpoints_strings.dart';

String addBaseUrlIfNeeded(String imageUrl) {
  if (imageUrl.startsWith('http://') || imageUrl.startsWith('https://')) {
    return imageUrl;
  }

  const String baseUrl = EndpointsStrings.baseUrl;
  return baseUrl + imageUrl;
}
