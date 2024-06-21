import 'dart:convert';

List<MemberImg> memberImgFromJson(String str) => List<MemberImg>.from(json.decode(str).map((x) => MemberImg.fromJson(x)));

String memberImgToJson(List<MemberImg> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MemberImg {
  String id;
  String pw;
  String imgPath;

  MemberImg({
    required this.id,
    required this.pw,
    required this.imgPath,
  });

  factory MemberImg.fromJson(Map<String, dynamic> json) => MemberImg(
    id: json["id"],
    pw: json["pw"],
    imgPath: json["img_path"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "pw": pw,
    "img_path": imgPath,
  };
}
