import 'dart:async';

import '../../domain/model/model.dart';
import '../resources/assets_manager.dart';
import '../resources/strings_manager.dart';
import '../Base/base_viewmodel.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  // Stream Controller
  final StreamController _streamController =
      StreamController<SliderViewObject>();
  late final List<SliderObject> _list;
  int _currentIndex = 0;

  // inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();
    // send this slider data to our view
    _postDataToView();
  }

  @override
  int goNext() {
    int nextIndex = _currentIndex++;
    if (nextIndex == _list.length) {
      _currentIndex = 0;
    }
    return _currentIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = _currentIndex--;
    if (previousIndex == -1) {
      _currentIndex = _list.length - 1;
    }
    return _currentIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

// Outputs
  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  // private function

  List<SliderObject> _getSliderData() => [
        SliderObject(AppString.onBoardingTitle1, AppString.onBoardingSubTitle1,
            ImageAssets.onBoardingLogo1),
        SliderObject(AppString.onBoardingTitle2, AppString.onBoardingSubTitle2,
            ImageAssets.onBoardingLogo2),
        SliderObject(AppString.onBoardingTitle3, AppString.onBoardingSubTitle3,
            ImageAssets.onBoardingLogo3),
        SliderObject(AppString.onBoardingTitle4, AppString.onBoardingSubTitle4,
            ImageAssets.onBoardingLogo4)
      ];
  _postDataToView() {
    inputSliderViewObject.add(
        SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
  }
}

// inputs mean the order our view model will receive from view
abstract class OnBoardingViewModelInputs {
  void goNext(); // when user click on right arrow or swap
  void goPrevious(); // when user click on left arrow or swap
  void onPageChanged(int index); // when user click on left arrow or swap

  Sink
      get inputSliderViewObject; // this is way to add data to the stream .. stream input
}

// outputs mean the data or result that will be sent from our view model to our view
abstract class OnBoardingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}
