import 'package:devloper_app/presentaion/screen/skills_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../business_logic/cubit/courses_cubit.dart';
import '../../../business_logic/cubit/education_cubit.dart';
import '../../../business_logic/cubit/internships_cubit.dart';
import '../../../business_logic/cubit/projects_cubit.dart';
import '../../../business_logic/cubit/skills_cubit.dart';
import '../../../constants/Colors.dart';
import '../course_screen.dart';
import '../education_screen.dart';
import '../internship_screen.dart';
import '../personal_details.dart';
import '../project_screen.dart';

class ListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const ListItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        leading: ShaderMask(
          shaderCallback: (Rect bounds) {
            return MyColors.myGreadient1.createShader(bounds);
          },
          blendMode: BlendMode.srcIn,
          child: Icon(icon, size: 28),
        ),
        title: Text(title),
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
onTap: () {
  if (title == 'Skills') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => SkillsCubit()..addSkill(),
          child: const SkillsScreen(),
        ),
      ),
    );
  } else if (title == 'Education') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => EducationCubit()..addEducation(),
          child: const EducationScreen(),
        ),
      ),
    );
  } else if (title == 'Courses') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => CoursesCubit()..addCourse(),
          child: const CoursesScreen(),
        ),
      ),
    );
  }else if (title == 'Internships') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => InternshipsCubit()..addInternship(),
          child: const InternshipsScreen(),
        ),
      ),
    );} 
  else if (title == 'Projects') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => ProjectsCubit()..addProject(),
          child: const ProjectsScreen(),
        ),
      ),
    );
  } else if (title == 'Personal Details') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PersonalDetails(),
      ),
    );
  }
},




      ),
    );
  }
}
