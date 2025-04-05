import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../viewmodels/cgpa_viewmodel.dart';
import '../models/course.dart';
import 'add_course_screen.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cgpaViewModel = Provider.of<CGPAViewModel>(context);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Courses'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(CupertinoIcons.add),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => const AddCourseScreen()),
            );
          },
        ),
      ),
      child: ListView.builder(
        itemCount: cgpaViewModel.courses.length,
        itemBuilder: (context, index) {
          final Course course = cgpaViewModel.courses[index];
          return CupertinoListTile(
            title: Text(course.name),
            subtitle: Text(
              'Grade: ${course.grade}, Credits: ${course.credits}',
            ),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Icon(
                CupertinoIcons.delete,
                color: CupertinoColors.destructiveRed,
              ),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
