import '../BaseResponse.dart';

class ShopBanners implements BaseResponse {
  int id;
  int sort;
  String name;
  String image;
  String link;

  ShopBanners(this.id, this.name, this.sort, this.image, this.link);

  @override
  ShopBanners fromJson(Map<String, dynamic> json) {
    return ShopBanners(
      id = json['id'],
      sort = json['sort'],
      name = json['name'],
      image = json['image'],
      link = json['link'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {'id': id, 'sort': sort, 'name': name, 'image': image, 'link': link};
  }
}
