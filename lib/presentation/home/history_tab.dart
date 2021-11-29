import 'package:flutter/material.dart';

import 'widgets/history_title.dart';

class HistoryTabWidget extends StatelessWidget {
  const HistoryTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 1',
            name: 'Ác nữ không còn ác nữa',
            readTime: '1 day ago',
            thumbUrl: 'https://picsum.photos/150/150?id=1',
          ),
        ),
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 8',
            name: 'Ác nữ trùng sinh',
            readTime: '4 days ago',
            thumbUrl: 'https://picsum.photos/150/150?id=2',
          ),
        ),
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 100',
            name: 'Cuộc sống hai mặt của giáo sư',
            readTime: '7 days ago',
            thumbUrl: 'https://picsum.photos/150/150?id=3',
          ),
        ),
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 2',
            name: 'Vị cứu tinh của nam thần phản diện',
            readTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=4',
          ),
        ),
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 8',
            name: 'Vợ ơi, đừng chạy!',
            readTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=5',
          ),
        ),
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 1',
            name: 'Tự tôn',
            readTime: '1 day ago',
            thumbUrl: 'https://picsum.photos/150/150?id=6',
          ),
        ),
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 1',
            name: 'Nữ sinh ở cung Hoàng hậu',
            readTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=7',
          ),
        ),
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 1',
            name: 'Bắt đầu của vận mệnh',
            readTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=8',
          ),
        ),
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 1',
            name: 'Vết cắn ngọt ngào',
            readTime: '1 week ago',
            thumbUrl: 'https://picsum.photos/150/150?id=9',
          ),
        ),
        HistoryTitleWidget(
          historyTitleModel: HistoryTitleModel(
            lastReadChapterName: 'Chapter 1',
            name: 'Ác nữ không còn ác nữa',
            readTime: '1 year ago',
            thumbUrl: 'https://picsum.photos/150/150?id=10',
          ),
        ),
      ],
    );
  }
}
