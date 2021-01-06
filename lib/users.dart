// part of flutter_marketplace_service;

// class _Users {
//   static Future<List<UserModel>> getUsers() async {
//     try {
//       String url = baseUrl + "/users";
//       var response = await http.get(url);
//       Iterable list = json.decode(response.body);
//       return list.map((model) => UserModel.fromJson(model)).toList();
//     } catch (e) {
//       return List<UserModel>();
//     }
//   }
// }
