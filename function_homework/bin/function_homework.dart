// В UTF-16 код буквы а равен 97, а не 1
final Difference_In_Codes = 96;

void main() {
  print(listSummator(["dart", "abc", "good luck"]));
}

int codeSummator(String string) {
  var newString = string.replaceAll(" ", "");
  var codeList = newString.codeUnits;
  var sum = 0;

  codeList.forEach((element) {
    element -= Difference_In_Codes;
    sum += element;
  });

  return sum;
}

List<int> listSummator(List<String> strings) {
  var listOfSum = <int>[];

  for (var i = 0; i < strings.length; i++) {
    var codeSum = codeSummator(strings[i]);
    var position = i + 1;
    listOfSum.add(codeSum * position);
  }

  return listOfSum;
}
