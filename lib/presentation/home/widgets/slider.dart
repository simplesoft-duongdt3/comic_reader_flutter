import 'package:flutter/material.dart';

class SliderModel {
  final String thumbUrl;

  const SliderModel(this.thumbUrl);
}

class HomeSliderWidgetDemo extends StatelessWidget {
  const HomeSliderWidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeSliderWidget(
            models: const [
              SliderModel("https://picsum.photos/600/400?id=1"),
              SliderModel("https://picsum.photos/600/400?id=2"),
              SliderModel("https://picsum.photos/600/400?id=3"),
            ],
            onSlideTap: (slide) {},
          ),
          const Text("HomeSliderWidgetDemo")
        ],
      ),
    );
  }
}

class HomeSliderWidget extends StatefulWidget {
  final List<SliderModel> models;
  final Function(SliderModel) onSlideTap;

  const HomeSliderWidget(
      {Key? key, required this.models, required this.onSlideTap})
      : super(key: key);

  @override
  State<HomeSliderWidget> createState() => _HomeSliderWidgetState();
}

class _HomeSliderWidgetState extends State<HomeSliderWidget> {
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 0.8,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          return _SlidePageWidget(
            sliderModel: widget.models[index],
            pageController: _pageController,
            index: index,
          );
        },
        itemCount: widget.models.length,
        onPageChanged: (index) {},
      ),
    );
  }
}

class _SlidePageWidget extends StatelessWidget {
  final SliderModel sliderModel;
  final PageController pageController;
  final int index;

  const _SlidePageWidget({
    Key? key,
    required this.sliderModel,
    required this.pageController,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context, widget) {
          double value = 1;
          if (pageController.position.haveDimensions) {
            double page = pageController.page!;
            double distance = (page - index).abs();
            value = (1 - (distance * 0.3)).clamp(0.0, 1.0);
            //print("pageController $index value $value distance $distance");
          }

          double transform = Curves.easeIn.transform(value);
          //print("transform $transform");
          return Center(
            child: SizedBox.fromSize(
              size: Size(
                transform * 600,
                transform * 200,
              ),
              child: widget,
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(top: 8, bottom: 8),
          child: Image.network(
            sliderModel.thumbUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
