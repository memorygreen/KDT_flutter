import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// 240509 목

class ExGetImg extends StatelessWidget {
  const ExGetImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Image.network
        // 접속할 때마다 필요한 사진을 서버에 접속을 해서 불러옴
        // bbq먹을라고 클릭해서 화면 이동했는데
        // 갑자기 bhc 먹고 싶어서 화면을 이전 페이지로 이동하게 되면
        // 모든 이미지들을 다시 불러와야 합니다

        // 많은 이미지 처리 시가 문제
        child: Column(
          children: [
            Image.network("http://211.48.213.193:8091/static/살려줘.jpg",
                width: 200,
                height: 200,),
            
            // cached_network_image
            // 처음은 다소 느리게 로딩될 수 있음!
            // 처음 이후 캐시 저장소를 이용하여 빠르게 불러오기 가능!
            CachedNetworkImage(imageUrl: "http://211.48.213.193:8091/static/살려줘.jpg",
              width: 200,
              height: 200,
              placeholder: (context, url) =>CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),)
          ],
        ),
      ),
    );
  }
}
