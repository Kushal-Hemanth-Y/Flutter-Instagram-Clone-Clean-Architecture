import 'package:flutter_bloc_cleanarch/features/instagram_clone/presentation/pages/main_screen/main_screen.dart';
import 'package:flutter_bloc_cleanarch/features/instagram_clone/presentation/pages/profile/edit_profile_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'features/instagram_clone/presentation/pages/credentials/sign_in_page.dart';
import 'features/instagram_clone/presentation/pages/credentials/sign_up_page.dart';
import 'features/instagram_clone/presentation/pages/post/comments/comments_page.dart';
import 'features/instagram_clone/presentation/pages/post/update_post_page.dart';

final List<GetPage<dynamic>> all_Routes = [
  // ----------- home routes ----------------
  GetPage(
    name: '/mainScreen',
    page: () => const MainScreen(),
  ),
  GetPage(
    name: '/updatePostPage',
    page: () => const UpdatePostPage(),
  ),
  GetPage(
    name: '/commentsPage',
    page: () => const CommentsPage(),
  ),

  // --------------- home routes end ----------------

  // ------------------- profile routes -------------------------
  GetPage(
    name: '/editProfilePage',
    page: () => const EditProfilePage(),
  ),
  // ------------------- profile routes end ----------------------

  // ---------------- sign up page -----------------------
  GetPage(
    name: '/signUpPage',
    page: () => const SignUpPage(),
  ),
  // ---------------- sign up page end -----------------------

  // ---------------- sign in page -----------------------
  GetPage(
    name: '/signInPage',
    page: () => const SignInPage(),
  ),
  // ---------------- sign in page end -----------------------
];
