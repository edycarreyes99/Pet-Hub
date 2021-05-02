import 'package:dio/dio.dart';
import 'package:pet_hub/global/consts/urls.dart';
import 'package:pet_hub/views/pets/models/pet.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient({Dio dio, String baseUrl}) {
    dio = Dio(BaseOptions(contentType: 'application/json'));

    return _RestClient(dio, baseUrl: baseUrl);
  }

  @GET(AppURLs.PETS_URL)
  Future<List<Pet>> getPets(
    @Query('limit') int limit,
  );
}
