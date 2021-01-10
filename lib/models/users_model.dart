import '../BaseResponse.dart';

class UserModel implements BaseResponse {
  int id;
  String name;
  String email;

  UserModel(this.id, this.name, this.email);

  @override
  UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
        id = json['id'], name = json['name'], email = json['email']);
  }

  @override
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email};
  }
}

// class UserModel {
//   String id;
//   String name;
//   String email;
//   String address;

//   UserModel({
//     this.id,
//     this.name,
//     this.email,
//     this.address,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//         id: json["id"],
//         name: json["name"],
//         email: json["email"],
//         address: json["address"],
//       );

//   // Map<String, dynamic> toJson() => {
//   //       "id": id,
//   //     };
// }

// //  {
// //     "id": 1,
// //     "name": "Leanne Graham",
// //     "username": "Bret",
// //     "email": "Sincere@april.biz",
// //     "address": {
// //       "street": "Kulas Light",
// //       "suite": "Apt. 556",
// //       "city": "Gwenborough",
// //       "zipcode": "92998-3874",
// //       "geo": {
// //         "lat": "-37.3159",
// //         "lng": "81.1496"
// //       }
// //     },
// //     "phone": "1-770-736-8031 x56442",
// //     "website": "hildegard.org",
// //     "company": {
// //       "name": "Romaguera-Crona",
// //       "catchPhrase": "Multi-layered client-server neural-net",
// //       "bs": "harness real-time e-markets"
// //     }
// //   },
