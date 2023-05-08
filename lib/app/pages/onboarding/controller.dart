import 'package:campusconnect/app/common/routes/routes.dart';
import 'package:campusconnect/app/helper/asyncstore.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {

   int dotIndicatorIndex = 0;

   bool run = true;

   void oneTimeHit()async{
      if(run){
         SharedKeyPair preferences = SharedKeyPair();
         preferences.getString("authToken");

         final waitCheck =await preferences.getBool("setwaiting");
         if(waitCheck!=null){
            if(waitCheck==true){
               Get.toNamed(AppRoutes.waiting);
               return;
            }
         }
         final isLogged =await preferences.getBool("logged");
            if(isLogged==null){return;}
            if(isLogged){
              Get.toNamed(AppRoutes.home);
            }
          run=false;
        }
   }
   
}