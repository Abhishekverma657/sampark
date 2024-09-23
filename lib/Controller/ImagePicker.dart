import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
  final ImagePicker  picker= ImagePicker();
   Future<String> PickImage()async{
    final XFile? image = await  picker.pickImage(source: ImageSource.gallery); 
    if (image != null) {
      return image.path;
      } else {
        return '';

  

   }
   }
  

}