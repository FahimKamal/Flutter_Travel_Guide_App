
import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/travel_models/travel_model.dart';

const defaultPadding = 20.0;

const mainColor = Colors.green;
final secondaryColor = Colors.grey[200];

String demoText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut ornare purus. Curabitur maximus, ante eget euismod vestibulum, mauris ante posuere arcu, eu tempus tellus ex eu neque. Curabitur quis sapien auctor, aliquam ipsum sit amet, dictum purus. Praesent quis purus quam. Sed tortor augue, fermentum nec finibus vitae, interdum at arcu. Fusce nec ipsum fermentum, tincidunt ipsum vel, consequat augue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam placerat imperdiet malesuada. Maecenas convallis dui sem, pellentesque vehicula mi malesuada et." +

 "Sed dictum mollis scelerisque. Aliquam erat volutpat. Proin nec odio eu urna lobortis commodo. Fusce imperdiet efficitur malesuada. Mauris molestie venenatis blandit. Nulla venenatis mi et vehicula semper. Aliquam quis sagittis mauris, id sodales justo. Fusce in ipsum cursus leo tristique convallis. Nulla pellentesque nisi metus, vel aliquet lorem semper ut. Pellentesque non consequat justo. Sed ut augue sed nulla tristique suscipit. Nulla dui sem, sagittis et sodales ac, efficitur nec augue. Aenean tempor erat ut mauris laoreet, a efficitur ex finibus. Duis blandit rutrum sollicitudin. Vestibulum vel pretium lectus, in tempor felis. Etiam in nisi at leo feugiat pellentesque tempor quis erat." +

"Duis non dapibus risus. Sed quis urna dolor. Sed accumsan hendrerit dolor, vel accumsan lacus blandit ut. Phasellus metus urna, pretium vitae orci id, feugiat elementum leo. Nam quis euismod odio, eu pellentesque justo. Fusce in interdum velit. Aliquam sit amet augue efficitur, interdum ligula id, malesuada magna. Nulla eget urna laoreet est convallis bibendum ac vitae lorem. Praesent tincidunt neque faucibus, mollis magna ut, vestibulum nunc. Sed porta porta dui, a commodo erat mattis eget. Cras sed sapien at metus eleifend suscipit non sed lectus. Maecenas consequat faucibus pretium. Nullam placerat convallis metus eu molestie. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi eu sem tincidunt, iaculis leo vitae, semper nisl. Mauris blandit pharetra leo, vel porttitor erat aliquet maximus."+

"Nulla facilisi. Donec iaculis mi fermentum, tincidunt elit imperdiet, dictum libero. Maecenas ultricies lacus at luctus suscipit. Mauris bibendum lorem a venenatis elementum. Cras vel mollis metus. Proin ipsum dolor, rhoncus nec justo et, scelerisque vehicula ex. Maecenas vehicula dignissim suscipit. In nibh diam, tincidunt ornare erat sit amet, lobortis gravida ex. Aliquam in tincidunt sem."+

"Maecenas sed luctus purus. Phasellus mattis finibus mi. Sed iaculis diam nec justo commodo porta. Donec dictum neque vitae dui ultrices, at dictum ligula consequat. Donec non erat eleifend, viverra nulla ut, lobortis turpis. Ut fermentum blandit lacus sed congue. Integer quis pharetra nunc. Aenean porta euismod felis, placerat sagittis ante lobortis eu. Mauris laoreet, ipsum ac laoreet scelerisque, enim felis aliquet justo, sit amet semper lacus dolor sed lacus."+

"Vestibulum lacus ligula, aliquam et massa et, accumsan molestie urna. Mauris rhoncus vitae arcu et faucibus. Aenean nec augue eu tellus pulvinar dictum. Aenean molestie commodo luctus. Praesent venenatis mollis nunc, vitae pretium diam tincidunt sed. Sed risus leo, eleifend ut ipsum ac, volutpat condimentum libero. Etiam lacus purus, scelerisque in lacinia eget, finibus nec justo. Praesent sed tortor mi. Fusce auctor nulla orci, quis accumsan quam finibus ac. Sed risus ligula, lobortis et gravida vitae, mattis sit amet lacus. In in tincidunt leo. Curabitur rutrum, lectus at sollicitudin rhoncus, nisi urna interdum purus, in mollis nibh turpis in leo."+

"Curabitur auctor tincidunt risus vel rutrum. Phasellus gravida magna id eros lacinia, sit amet dignissim enim lacinia. Donec luctus, tellus non bibendum bibendum, erat felis porta mauris, at aliquam elit felis eget sem. Duis eget metus egestas lectus iaculis molestie vel ut leo. Suspendisse sit amet porta est. Phasellus scelerisque magna laoreet elit eleifend, eu mollis nunc facilisis. Etiam blandit ex a nisi maximus, facilisis vulputate nibh imperdiet. Duis felis tortor, faucibus quis diam nec, pulvinar tempor magna. Aliquam erat volutpat."+

"Cras tincidunt elementum nisl. Aenean accumsan, nunc ac elementum varius, nunc nulla sodales ligula, quis viverra leo ex in neque. Suspendisse iaculis efficitur nisi, ut posuere enim. Donec tempus rhoncus ante, id scelerisque ante. Nullam sapien nulla, feugiat nec interdum vel, cursus ut dolor. Maecenas tristique est ut lacus porta, non malesuada odio pharetra. Cras sed ex sit amet elit sollicitudin ultricies. Cras non bibendum arcu. Pellentesque ac nunc quis erat facilisis sodales. Donec vehicula volutpat ullamcorper."+

"Nunc a libero ac felis rhoncus egestas posuere nec erat. Sed eget ultricies dui. Donec luctus massa at quam tincidunt vehicula. Ut porttitor diam non nisl maximus, et auctor sem ornare. Cras vel lacinia sem. Proin ex tortor, tincidunt eu purus fringilla, dignissim bibendum erat. Quisque pellentesque neque dui, vitae tincidunt metus porta ac. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam semper sit amet quam vel sollicitudin. Suspendisse venenatis, massa id aliquet vehicula, arcu quam pretium erat, eget laoreet nibh nibh non magna. Morbi venenatis quis sapien vel vulputate. Integer quis accumsan mauris, et mattis neque."+

"Curabitur ut sodales tortor, quis sodales nisi. Pellentesque semper dictum purus in tincidunt. Suspendisse hendrerit quam sit amet sollicitudin gravida. Integer ultricies rhoncus quam vitae sollicitudin. Nullam tempor, tellus in tincidunt facilisis, metus leo aliquet ligula, vel fringilla turpis lectus a purus. Vivamus cursus mi dictum, tincidunt eros id, placerat lectus. Fusce purus dolor, pharetra in nibh vel, ullamcorper elementum felis. Sed posuere aliquam urna non laoreet. Nam vitae tempor lacus. In mollis congue bibendum. Aenean a faucibus mi. Sed ex nulla, tincidunt sed mauris in, iaculis rhoncus elit. In non magna porttitor, sagittis leo sed, pharetra magna. Duis non est tristique, facilisis augue ut, vehicula nisi. Vivamus eu nisi eu tellus mollis gravida non in leo.";


class StaticData{
  static List mainMenuItems = [
    ["বাংলাদেশ ভ্রমণ", Icons.my_location_sharp],
    ["বিদেশ ভ্রমণ", Icons.language],
    ["ভ্রমণ ব্লগ", Icons.paste],
    ["জনপ্রিয় স্থান", Icons.stars],
    ["ভিডিও", Icons.ondemand_video],
    ["সংরক্ষিত তথ্য", Icons.save],
  ];

  static const List<String> travelRegion = ['Travel Bangladesh', 'Travel World'];

  static const List<String> allCountries = [
    'Bangladesh', 'India', 'Pakistan', 'Bhutan', 'Nepal', 'Sri lanka',
    'Australia', 'USA', 'Canada', 'China', 'Japan',
  ];

  static const List<String> bdDistrict = [
    'Dhaka', 'Bogura', 'Kuistia', 'Khulna', 'Gazipur', 'Magura',
    'Mymansinho', 'Silot', 'Dinajpur'
  ];

  static List<TravelModel> demoDestinations = [
    TravelModel(destinationName: "Bangladesh",imageLink: 'images/Bangladesh.png',description: demoText,),
    TravelModel(destinationName: "India",imageLink: 'images/india.png',description: demoText,),
    TravelModel(destinationName: "USA",imageLink: 'images/USA.png',description: demoText,),
    TravelModel(destinationName: "Sri Lanka",imageLink: 'images/Srilanka.jpg',description: demoText,),
    TravelModel(destinationName: "Pakistan",imageLink: 'images/pakistan.png',description: demoText,),
    TravelModel(destinationName: "Bangladesh",imageLink: 'images/Bangladesh.png',description: demoText,),
  ];

}

