import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../domain/model/model.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/values_manager.dart';
import 'onBoardingViewModel.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController(initialPage: 0);

  OnBoardingViewModel _viewModel = OnBoardingViewModel();

  _bind() {
    _viewModel.start();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<SliderViewObject>(
        stream: _viewModel.outputSliderViewObject,
        builder: (context, snapShot) {
          return Center(
            child: Text(snapShot.data.toString()),
          );
        },
      ),
    );
  }

//   Widget _getContentWidget(SliderViewObject? sliderViewObject) {
//     if (sliderViewObject == null) {
//       return Container();
//     } else {
//       return Scaffold(
//         backgroundColor: ColorManager.white,
//         appBar: AppBar(
//           backgroundColor: ColorManager.white,
//           elevation: AppSize.s0,
//           systemOverlayStyle: SystemUiOverlayStyle(
//               statusBarColor: ColorManager.white,
//               statusBarBrightness: Brightness.dark,
//               statusBarIconBrightness: Brightness.dark),
//         ),
//         body: PageView.builder(
//             controller: _pageController,
//             itemCount: sliderViewObject.numOfSlides,
//             onPageChanged: (index) {
//               _viewModel.onPageChanged(index);
//             },
//             itemBuilder: ((context, index) {
//               return OnBoardingPage(sliderViewObject.sliderObject);
//             })),
//         bottomSheet: Container(
//           color: ColorManager.white,
//           height: AppSize.s100,
//           child: Column(
//             children: [
//               Align(
//                   alignment: Alignment.centerRight,
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.pushNamedAndRemoveUntil(
//                           context, Routes.loginRoute, (_) => false);
//                     },
//                     child: Text(
//                       AppString.skip,
//                       style: Theme.of(context).textTheme.bodyMedium,
//                       textAlign: TextAlign.end,
//                     ),
//                   )),
//               Expanded(child: _getBottomSheetWidget(sliderViewObject))
//             ],
//           ),
//         ),
//       );
//     }
//   }

//   Widget _getBottomSheetWidget(SliderViewObject sliderViewObject) {
//     return Container(
//       color: ColorManager.primary,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(AppPadding.p8),
//             child: GestureDetector(
//               child: SizedBox(
//                   height: AppSize.s20,
//                   width: AppSize.s20,
//                   child: SvgPicture.asset(ImageAssets.leftArrow)),
//               onTap: () {
//                 _pageController.animateToPage(_viewModel.goPrevious(),
//                     duration: Duration(milliseconds: DurationConstraints.d300),
//                     curve: Curves.bounceInOut);
//               },
//             ),
//           ),
//           Row(
//             children: [
//               for (int i = 0; i < sliderViewObject.numOfSlides; i++)
//                 Padding(
//                   padding: EdgeInsets.all(AppPadding.p8),
//                   child: getProperCircle(i, sliderViewObject.currentIndex),
//                 )
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.all(AppPadding.p8),
//             child: GestureDetector(
//               child: SizedBox(
//                   height: AppSize.s20,
//                   width: AppSize.s20,
//                   child: SvgPicture.asset(ImageAssets.rightArrow)),
//               onTap: () {
//                 _pageController.animateToPage(_viewModel.goNext(),
//                     duration: Duration(milliseconds: DurationConstraints.d300),
//                     curve: Curves.bounceInOut);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget getProperCircle(int index, int currentIndex) {
//     if (index == currentIndex)
//       return SvgPicture.asset(ImageAssets.hollowCircle);
//     else
//       return SvgPicture.asset(ImageAssets.solidCircle);
//   }
// }

// class OnBoardingPage extends StatelessWidget {
//   SliderObject _sliderObject;
//   OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         SizedBox(
//           height: AppSize.s40,
//         ),
//         Padding(
//           padding: const EdgeInsets.all(AppPadding.p8),
//           child: Text(
//             _sliderObject.title,
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.headline1,
//           ),
//         ),
//         SizedBox(
//           height: AppSize.s60,
//         ),
//         SvgPicture.asset(_sliderObject.image)
//       ],
//     );
//   }
}
