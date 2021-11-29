import 'package:flutter/material.dart';

class FavoriteTitleModel {
  final String name;
  final String thumbUrl;
  final String favoriteTime;

  FavoriteTitleModel({
    required this.name,
    required this.thumbUrl,
    required this.favoriteTime,
  });
}

class FavoriteTitleWidget extends StatelessWidget {
  final FavoriteTitleModel favoriteTitleModel;
  const FavoriteTitleWidget({
    Key? key,
    required this.favoriteTitleModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            favoriteTitleModel.thumbUrl,
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                favoriteTitleModel.name,
                maxLines: 1,
                style: Theme.of(context).textTheme.bodyText1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.date_range,
                    color: Colors.red,
                    size: 16,
                  ),
                  Text(
                    favoriteTitleModel.favoriteTime,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.red,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}
