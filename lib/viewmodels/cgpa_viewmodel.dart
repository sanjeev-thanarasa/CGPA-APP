import 'package:flutter/cupertino.dart';
import 'package:gpa_calculator/models/course.dart';

class CGPACalculator {
  final List<Course> courses;

  CGPACalculator({required this.courses});

  double calculateCGPA() {
    if (courses.isEmpty) return 0.0;

    double totalGradePoints = 0.0;
    int totalCredits = 0;

    for (var course in courses) {
      totalGradePoints += course.gradePoint * course.credits;
      totalCredits += course.credits;
    }

    return totalCredits > 0 ? totalGradePoints / totalCredits : 0.0;
  }
}

class CGPAViewModel extends ChangeNotifier {
  List<Course> _courses = [];
  double _cgpa = 0.0;

  List<Course> get courses => _courses;
  double get cgpa => _cgpa;

  void addCourse(Course course) {
    _courses.add(course);
    _calculateCGPA();
    notifyListeners();
  }

  void removeCourse(int index) {
    if (index >= 0 && index < _courses.length) {
      _courses.removeAt(index);
      _calculateCGPA();
      notifyListeners();
    }
  }

  void _calculateCGPA() {
    _cgpa = CGPACalculator(courses: _courses).calculateCGPA();
  }
}
