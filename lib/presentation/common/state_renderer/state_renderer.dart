// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:learn_clean_architecture/data/mapper/mapper.dart';
// import 'package:learn_clean_architecture/data/network/filure.dart';
// import 'package:learn_clean_architecture/presentation/resources/color_manager.dart';
// import 'package:learn_clean_architecture/presentation/resources/font_manager.dart';
// import 'package:learn_clean_architecture/presentation/resources/strings_manager.dart';
// import 'package:learn_clean_architecture/presentation/resources/style_manager.dart';

// import '../../resources/values_manager.dart';

// enum StateRendererType {
//   // POPUP STATES
//   POPUP_LOADING_STATE,
//   POPUP_ERROR_STATE,

//   // FULL SCREEN STATES
//   FULL_SCREEN_LOADING_STATE,
//   FULL_SCREEN_ERROR_STATE,

//   CONTENT_SCREEN_STATE, //the ui for the screen
//   EMPTY_SCREEN_STATE, // Empty view when we receive no data from api side
// }

// class StateRanderer extends StatelessWidget {
//   StateRendererType stateRendererType;
//   Failure failure;
//   String message;
//   String title;
//   Function? retryActionFunction;

//   StateRanderer(
//       {Key? key,
//       required this.stateRendererType,
//       Failure? failure,
//       String? message,
//       String? title,
//        this.retryActionFunction})
//       : message = message ?? AppString.loading,
//         title = title ?? EMPTY,
//         failure = failure ?? DefaultFailure(),
//         super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return _getStateWidget(context);
//   }

//   Widget _getStateWidget(BuildContext context) {
//     switch (stateRendererType) {
//       case StateRendererType.POPUP_LOADING_STATE:
//         // TODO: Handle this case.
//         break;
//       case StateRendererType.POPUP_ERROR_STATE:
//         // TODO: Handle this case.
//         break;
//       case StateRendererType.FULL_SCREEN_LOADING_STATE:
//         return _getItemsInWidget([_getAnimatedImage(),_getMessage(message)]);
//       case StateRendererType.FULL_SCREEN_ERROR_STATE:
//         return _getItemsInWidget([_getAnimatedImage(),_getMessage(failure.message),_getRetryButton(AppString.retryAgain,context)]);
//       case StateRendererType.CONTENT_SCREEN_STATE:
//         // TODO: Handle this case.
//         break;
//       case StateRendererType.EMPTY_SCREEN_STATE:
//         // TODO: Handle this case.
//         break;
//       default:
//         return Container();
//     }
//   }

//   Widget _getAnimatedImage(){
//     return SizedBox(
//       height: AppSize.s100,
//       width: AppSize.s100,
//       child: , // json image
//     );
//   }

//    Widget _getMessage(String message){
   
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(AppPadding.p18),
//         child: Text(
//           message,style: getMediumStyle(color: ColorManager.black,fontSize: FontSize.s16),
//         ),
//       ),
//     );
//   }
//    Widget _getRetryButton(String buttonTitle,BuildContext context){
   
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(AppPadding.p18),
//         child: SizedBox(
//           width: AppSize.s180,
//           child: ElevatedButton(onPressed: (){
//             if(stateRendererType == StateRendererType.FULL_SCREEN_ERROR_STATE){
//         retryActionFunction?.call();
//             }else{
//               Navigator.pop(context);
//             }
//           }, child: Text(buttonTitle)),
//         ),
//       ),
//     );
//   }

//   Widget _getItemsInWidget(List<Widget> children) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: children,
//       ),
//     );
//   }
// }
