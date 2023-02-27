abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  // shared value and function that will be used through any model.
}

abstract class BaseViewModelInputs {
  void start(); // will be call when init of viewmodel
  void dispose(); // wii be called when view model dies.
}

abstract class BaseViewModelOutputs {}
