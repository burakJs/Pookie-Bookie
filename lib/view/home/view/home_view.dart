import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:pookie_bookie/core/base/view/base_widget.dart';
import 'package:pookie_bookie/core/init/navigation/navigation_service.dart';
import 'package:pookie_bookie/view/home/viewmodel/home_view_model.dart';

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
              buildListView(),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  CarouselSlider buildCarouselSlider() {
    return CarouselSlider(
      items: [Image.network('https://4kwallpapers.com/images/wallpapers/apple-logo-colorful-outline-black-background-ipad-hd-1920x1080-789.png')],
      options: CarouselOptions(
        height: 300,
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

  Widget buildListView() {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: 5,
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
                    backgroundImage: NetworkImage('https://freepikpsd.com/wp-content/uploads/2019/10/toys-png-3.png'),
                    radius: 55,
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' Oyuncak Araba \nYalnızca 10 puan',
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
      case 2:
        NavigationService.instance.navigateToPageClear(path: '/shop');
        break;
      default:
    }
  }

  PageView buildPageView(HomeViewModel viewModel) {
    return PageView.builder(
      onPageChanged: (value) {
        viewModel.setPageView(value);
        print(viewModel.pageView);
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return PageView(
          controller: PageController(viewportFraction: 0.95),
          children: [
            Image.network('https://4kwallpapers.com/images/wallpapers/apple-logo-colorful-outline-black-background-ipad-hd-1920x1080-789.png')
          ],
        );
      },
    );
  }

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
