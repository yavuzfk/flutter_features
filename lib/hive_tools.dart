import 'package:hive/hive.dart';

class HiveGetText {
  final String hiveDatabaseName = 'hiveBox';
  final String hiveABoxKey = 'boxKey';
}

class HiveGetBox {
  final Box box = Hive.box(HiveGetText().hiveDatabaseName);
}

void hiveWrite(String key, bool value) {
  if (HiveGetBox().box.containsKey(key)) {
    HiveGetBox().box.delete(key);
  }
  HiveGetBox().box.put(key,
      value); // Why hive does not have a update property, we have to delete and put new value for updating
}

bool hiveRead(String key) {
  if (HiveGetBox().box.containsKey(key)) {
    bool datas = HiveGetBox().box.get(key);
    return datas;
  } else {
    return false; // empty list
  }
}

bool hiveHasData(String key) {
  return HiveGetBox().box.containsKey(key);
}

void hiveDelete(String key) {
  if (HiveGetBox().box.containsKey(key)) {
    HiveGetBox().box.delete(key);
  }
}
