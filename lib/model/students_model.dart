
import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class StudentsModel extends HiveObject{
@HiveField(0)
String? name;
int? age;

StudentsModel({required this.name, required this.age});

}