import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/view/base_widget.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../viewmodel/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, HomeViewModel viewModel) => Scaffold(
        appBar: AppBar(
          leading: Text('   0', style: context.textTheme.headline4.copyWith(color: Colors.black)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildCarouselSlider(),
              buildListView(viewModel),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  CarouselSlider buildCarouselSlider() {
    return CarouselSlider(
      items: [
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqt0Uum9kJ8c2Ye2DZ2kAikC0i3FR7B-jTLw&usqp=CAU'),
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqIwiQO6mtrN0fe-uY4YvfjH4cYUpsLXyC9w&usqp=CAU'),
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-rRZKPcDElaZqgb1XKD3e9JfJLdoo8j_lyw&usqp=CAU'),
      ],
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 200),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) => null,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  // Column buildColumnPageView(HomeViewModel viewModel) {
  //   return Column(
  //     children: [
  //       Expanded(flex: 10, child: buildPageView(viewModel)),
  //       Expanded(flex: 2, child: buildListViewIndicator(viewModel)),
  //     ],
  //   );
  // }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (value) => buildBottomNavigatonNavgiator(value),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.clear_all), label: 'Books'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: 'SA'),
      ],
    );
  }

  Widget buildListView(viewModel) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: viewModel.banners.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: context.dynamicHeight(0.155),
          child: Card(
            child: Padding(
              padding: context.paddingLow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(viewModel.banners[index].image),
                    radius: 55,
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' Bu oyuncak \nYalnızca ${viewModel.banners[index].point} puan',
                        style: context.textTheme.headline5.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void buildBottomNavigatonNavgiator(int value) {
    switch (value) {
      case 0:
        NavigationService.instance.navigateToPageClear(path: '/book');
        break;
      case 1:
        NavigationService.instance.navigateToPageClear(path: '/home');
        break;
      case 2:
        NavigationService.instance.navigateToPageClear(path: '/shop');
        break;
      default:
    }
  }

  // PageView buildPageView(HomeViewModel viewModel) {
  //   return PageView.builder(
  //     onPageChanged: (value) {
  //       viewModel.setPageView(value);
  //       print(viewModel.pageView);
  //     },
  //     itemCount: 3,
  //     itemBuilder: (context, index) {
  //       return PageView(
  //         controller: PageController(viewportFraction: 0.95),
  //         children: [
  //           Image.network('https://4kwallpapers.com/images/wallpapers/apple-logo-colorful-outline-black-background-ipad-hd-1920x1080-789.png')
  //         ],
  //       );
  //     },
  //   );
  // }

  // ListView buildListViewIndicator(HomeViewModel viewModel) {
  //   return ListView.builder(
  //     shrinkWrap: true,
  //     itemCount: 3,
  //     scrollDirection: Axis.horizontal,
  //     itemBuilder: (context, index) => Observer(builder: (_) {
  //       return Padding(
  //         padding: context.horizontalPaddingLow,
  //         child: CircleAvatar(
  //           radius: viewModel.pageView == index ? 12 : 8,
  //           backgroundColor: viewModel.pageView == index ? context.appTheme.accentColor : context.appTheme.accentColor.withOpacity(0.6),
  //         ),
  //       );
  //     }),
  //   );
  // }
}
