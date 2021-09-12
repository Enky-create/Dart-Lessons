void main() {
  bool search(dynamic value, List list) {
    bool isContain = false;
    for (var element in list) {
      if (element == value) {
        isContain = true;
      }
    }
    return isContain;
  }

  var list = <dynamic>[60, 999, 14, "dart1", 45, 95, "dart", 1];
  var firstValue = "dart";
  var secondValue = 15;
  print(search(firstValue, list));
  print(search(secondValue, list));
}
