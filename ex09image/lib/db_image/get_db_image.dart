import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:ex09image/db_image/memberImgModel.dart';
import 'package:flutter/material.dart';

//240509(목) - 3

final dio = Dio();
List<MemberImg> list_img = [];


class ExGetDbImg extends StatefulWidget {
  const ExGetDbImg({super.key});

  @override
  State<ExGetDbImg> createState() => _ExGetDbImgState();
}

class _ExGetDbImgState extends State<ExGetDbImg> {

  @override
  void initState() {

    showImg();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  FutureBuilder(
          builder: (context, smapshot) {
            if(list_img==null){
              return Center(child: CircularProgressIndicator(),);
            }else{
              return ListView.builder(
                  itemCount: list_img.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      title: Text(list_img[index].id),
                      leading: SizedBox(
                        height: 100,
                        width: 100,
                        child: CachedNetworkImage(
                          imageUrl: list_img[index].imgPath,
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                      ),

                    );
                  });
            }

          }, future: null,
        ),
      ),
    );
  }

  void showImg() async {

    String url = "http://211.48.213.193:8091/imgDb/selectMember";

    final res = await dio.post(url);
    print(res.realUri);

    print(res.data);

    list_img = memberImgFromJson(res.data);



  }




}
