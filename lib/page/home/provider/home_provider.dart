import 'package:dio/dio.dart';
import 'package:frame_master/page/home/model/home_model.dart';
import 'package:frame_master/serve/base/base_provider.dart';
import 'package:frame_master/util/http_util.dart';

/// @time 2020/8/28 5:38 PM
/// @author gyy
/// @describe: HomeProvider

class HomeProvider extends BaseProvider {
  @override
  initRequest() async {
    await HttpUtil.instance
        .getRequest(
            'https://www.devio.org/io/flutter_app/json/test_common_model.json')
        .then((Response response) {
      return HomeModel.fromJson(response.data);
    });
  }
}
