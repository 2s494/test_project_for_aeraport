import 'package:intl/intl.dart';

String timeFormatter({required String timeFormat}){
  if(timeFormat.isNotEmpty){
    final toDateFormat = DateTime.parse(timeFormat);
   final toString =  DateFormat("HH:mm").format(toDateFormat);
   return toString;
  }else{
    return "";
  }
}