import 'package:comic_reader_flutter/presentation/home/widgets/slider.dart';
import 'package:flutter/material.dart';

import 'widgets/title_thumb_square.dart';

class HomeTabHomeWidget extends StatefulWidget {
  const HomeTabHomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeTabHomeWidget> createState() => _HomeTabHomeWidgetState();
}

class _HomeTabHomeWidgetState extends State<HomeTabHomeWidget> {
  bool _isShowBottomBanner = true;

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
            _buildHeaderRowThumbSquare("Truyện ngắn mùa hè", context),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildHeaderRowThumbSquare("Truyện ngắn mùa thu", context),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildHeaderRowThumbSquare("Truyện ngắn mùa đông", context),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildRowThumbSquare(),
            _buildBottomBannerFake(),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: _buildBottomBanner(),
        ),
      ],
    );
  }

  Widget _buildBottomBannerFake() {
    if (_isShowBottomBanner) {
      return const AspectRatio(
        aspectRatio: 1000 / 200,
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildBottomBanner() {
    if (_isShowBottomBanner) {
      return Stack(
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
                onTap: () {
                  setState(() {
                    _isShowBottomBanner = false;
                  });
                },
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
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildHeaderRowThumbSquare(String titleHeader, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            titleHeader,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          GestureDetector(
            onTap: () {
              //TODO ontap more
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 4),
              child: Text(
                "Xem thêm",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRowThumbSquare() {
    return Row(
      children: [
        const SizedBox(
          width: 6,
        ),
        Expanded(
          child: TitleThumbSquareWidget(
            titleThumbSquareModel: TitleThumbSquareModel(
              name: "Ác nữ trùng sinh",
              thumbUrl: "https://picsum.photos/100/100?id=1",
              numCountText: "4.6M",
            ),
          ),
        ),
        const SizedBox(
          width: 6,
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
        const SizedBox(
          width: 6,
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
        const SizedBox(
          width: 6,
        ),
      ],
    );
  }
}
