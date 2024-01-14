
import 'package:hive/hive.dart';

part 'Complited.g.dart';

@HiveType(typeId: 1)
class Complited {
  @HiveField(0)
  late String heading;
  
  @HiveField(1)
  late String description;

  @HiveField(2)
  late String file;

  @HiveField(3)
  late String date;

  @HiveField(4)
  late String subject;


  Complited({this.heading = '', this.description = '', this.date = '',  this.file = '', this.subject = ''});
}