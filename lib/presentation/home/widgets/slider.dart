import 'dart:async';

import 'package:flutter/material.dart';

class HomeSliderModel {
  final String thumbUrl;

  const HomeSliderModel(this.thumbUrl);
}

class HomeSliderWidget extends StatefulWidget {
  final List<HomeSliderModel> models;
  final Function(HomeSliderModel) onSlideTap;

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
    viewportFraction: 0.9,
  );

  late Timer timer;
  int _changePage = 1;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _handleAutoScrolling();
    });
    super.initState();
  }

  void _handleAutoScrolling() {
    if (widget.models.isNotEmpty) {
      double? page = _pageController.page;
      if (page != null) {
        int pageInt = page.toInt();
        bool isNotScrolling = pageInt.toDouble() == page;
        if (isNotScrolling) {
          var lastIndex = widget.models.length - 1;
          if (pageInt == 0 || pageInt == lastIndex) {
            _changePage *= -1;
          }
    
          int nextPage = pageInt + _changePage;
          if (nextPage > lastIndex) {
            nextPage = 0;
          }
          _pageController.animateToPage(
            nextPage,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      }
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
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
  final HomeSliderModel sliderModel;
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
          double page = 0;
          if (pageController.position.haveDimensions) {
            page = pageController.page!;
          }

          double distance = (page - index).abs();
            value = (1 - (distance * 0.2)).clamp(0.0, 1.0);
            //print("pageController $index value $value distance $distance");

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
