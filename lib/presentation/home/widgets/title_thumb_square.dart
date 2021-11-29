import 'package:flutter/material.dart';

class TitleThumbSquareModel {
  final String name;
  final String thumbUrl;
  final String numCountText;

  TitleThumbSquareModel({
    required this.name,
    required this.thumbUrl,
    required this.numCountText,
  });
}

class TitleThumbSquareWidget extends StatelessWidget {
  final TitleThumbSquareModel titleThumbSquareModel;
  const TitleThumbSquareWidget({
    Key? key,
    required this.titleThumbSquareModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 0.2,
        ),
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              titleThumbSquareModel.thumbUrl,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Text(
              titleThumbSquareModel.name,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyText1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.remove_red_eye,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  titleThumbSquareModel.numCountText,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Colors.red,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}
