class Course {
  final String name;
  final int credits;
  final String grade;
  final int semester;

  Course({
    required this.name,
    required this.credits,
    required this.grade,
    required this.semester,
  });

  double get gradePoint {
    switch (grade) {
      case 'A':
        return 4.0;
      case 'B':
        return 3.0;
      case 'C':
        return 2.0;
      case 'D':
        return 1.0;
      case 'F':
        return 0.0;
      default:
        return 0.0;
    }
  }
}
