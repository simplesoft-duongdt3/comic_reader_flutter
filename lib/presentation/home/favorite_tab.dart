import 'package:flutter/material.dart';

import 'widgets/favorite_title.dart';

class FavoriteTabWidget extends StatelessWidget {
  const FavoriteTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Ác nữ không còn ác nữa',
            favoriteTime: '1 day ago',
            thumbUrl: 'https://picsum.photos/150/150?id=1',
          ),
        ),
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Ác nữ trùng sinh',
            favoriteTime: '4 days ago',
            thumbUrl: 'https://picsum.photos/150/150?id=2',
          ),
        ),
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Cuộc sống hai mặt của giáo sư',
            favoriteTime: '7 days ago',
            thumbUrl: 'https://picsum.photos/150/150?id=3',
          ),
        ),
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Vị cứu tinh của nam thần phản diện',
            favoriteTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=4',
          ),
        ),
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Vợ ơi, đừng chạy!',
            favoriteTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=5',
          ),
        ),
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Tự tôn',
            favoriteTime: '1 day ago',
            thumbUrl: 'https://picsum.photos/150/150?id=6',
          ),
        ),
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Nữ sinh ở cung Hoàng hậu',
            favoriteTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=7',
          ),
        ),
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Bắt đầu của vận mệnh',
            favoriteTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=8',
          ),
        ),
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Vết cắn ngọt ngào',
            favoriteTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=9',
          ),
        ),
        FavoriteTitleWidget(
          favoriteTitleModel: FavoriteTitleModel(
            name: 'Ác nữ không còn ác nữa',
            favoriteTime: '1 year ago',
            thumbUrl: 'https://picsum.photos/150/150?id=10',
          ),
        ),
      ],
    );
  }
}
