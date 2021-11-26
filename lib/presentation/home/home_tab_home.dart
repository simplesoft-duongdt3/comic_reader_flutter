import 'package:comic_reader_flutter/presentation/home/widgets/slider.dart';
import 'package:flutter/material.dart';

import 'widgets/title_thumb_square.dart';

class HomeTabHomeWidget extends StatelessWidget {
  const HomeTabHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            HomeSliderWidget(
              models: const [
                HomeSliderModel("https://picsum.photos/600/400?id=1"),
                HomeSliderModel("https://picsum.photos/600/400?id=2"),
                HomeSliderModel("https://picsum.photos/600/400?id=3"),
              ],
              onSlideTap: (slide) {},
            ),
            _buildRowThumbSquare(),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            _buildRowThumbSquare(),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            _buildRowThumbSquare(),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            _buildRowThumbSquare(),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            _buildRowThumbSquare(),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 1000 / 200,
                child: Image.network(
                  "https://picsum.photos/500/100",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.close,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                top: 8,
                right: 8,
              )
            ],
          ),
        ),
      ],
    );
  }

  Row _buildRowThumbSquare() {
    return Row(
      children: [
        Expanded(
          child: TitleThumbSquareWidget(
            titleThumbSquareModel: TitleThumbSquareModel(
              name: "Ác nữ trùng sinh",
              thumbUrl: "https://picsum.photos/100/100?id=1",
              numCountText: "4.6M",
            ),
          ),
        ),
        Expanded(
          child: TitleThumbSquareWidget(
            titleThumbSquareModel: TitleThumbSquareModel(
              name: "Tại sao tôi phải đẹp trai thế này",
              thumbUrl: "https://picsum.photos/100/100?id=2",
              numCountText: "837.7K",
            ),
          ),
        ),
        Expanded(
          child: TitleThumbSquareWidget(
            titleThumbSquareModel: TitleThumbSquareModel(
              name: "Vị cứu tinh của nam phụ lão ấu",
              thumbUrl: "https://picsum.photos/100/100?id=3",
              numCountText: "1.5M",
            ),
          ),
        ),
      ],
    );
  }
}
