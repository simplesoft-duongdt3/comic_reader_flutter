import 'package:flutter/material.dart';

class HistoryTitleModel {
  final String name;
  final String thumbUrl;
  final String readTime;
  final String lastReadChapterName;

  HistoryTitleModel({
    required this.name,
    required this.thumbUrl,
    required this.readTime,
    required this.lastReadChapterName,
  });
}

class HistoryTitleWidget extends StatelessWidget {
  final HistoryTitleModel historyTitleModel;
  const HistoryTitleWidget({
    Key? key,
    required this.historyTitleModel,
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
            historyTitleModel.thumbUrl,
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
                historyTitleModel.name,
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
                    Icons.remove_red_eye,
                    color: Colors.red,
                    size: 16,
                  ),
                  const SizedBox(
            height: 2,
          ),
                  Text(
                    historyTitleModel.lastReadChapterName,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.red,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
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
                    historyTitleModel.readTime,
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
