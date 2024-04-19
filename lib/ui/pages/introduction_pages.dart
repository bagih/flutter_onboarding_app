import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

List<PageViewModel> provideIntroductionScreenPages(){
  return [
    PageViewModel(
      title: 'Shop your favorite coffee',
      body: 'buy your favorite coffee with many variant choices',
      image: SvgPicture.asset('assets/vector/shopping.svg', height: 200,)
    ),
    PageViewModel(
      title: 'Good companion to work with',
      body: 'Make coffee your work companion to be more focused',
      image: SvgPicture.asset('assets/vector/designer.svg', height: 200,)
    ),
    PageViewModel(
      title: 'Enjoy time with friends',
      body: 'Coffee is suitable for relaxing chats with friends',
      image: SvgPicture.asset('assets/vector/conversation.svg', height: 200,)
    ),
    PageViewModel(
      title: 'Easy to make',
      body: 'Equipped with a detailed guide to serving your best coffee',
      image: SvgPicture.asset('assets/vector/barista.svg', height: 200,)
    ),
  ];
}