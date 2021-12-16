
import 'package:students/model/main_model.dart';
import 'package:students/model/model_classrooms.dart';
import 'package:students/model/model_student.dart';
import 'package:students/model/model_subjects.dart';

class dashViewModel {
  final School dash;
  dashViewModel({this.dash});

  List<Students> get students {
    return this.dash.students;
  }

  List<Subjects> get subjects {
    return this.dash.subjects;
  }

  List<Classrooms> get classrooms {
    return this.dash.classrooms;
  }

}