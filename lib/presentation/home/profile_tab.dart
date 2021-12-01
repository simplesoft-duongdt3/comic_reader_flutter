import 'package:flutter/material.dart';

class ProfileTabWidget extends StatelessWidget {
  const ProfileTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          stretch: true,
          stretchTriggerOffset: 100,
          floating: true,
          onStretchTrigger: () {
            return Future.value(null);
          },
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: const Text("Profile"),
            background: Image.network(
              "https://picsum.photos/300/250",
              fit: BoxFit.cover,
            ),
            stretchModes: const [
              //StretchMode.blurBackground,
              StretchMode.fadeTitle,
              StretchMode.zoomBackground,
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text('$index', textScaleFactor: 5),
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
