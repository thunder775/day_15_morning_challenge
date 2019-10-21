// Challenge 1
// Write failing test cases for next two challenges

// Challenge 2
// Write a function that sorts the positive numbers in ascending order,
// and keeps the negative numbers untouched.
// Example: posNegSort([6, 3, -2, 5, -8, 2, -2]) ➞ [2, 3, -2, 5, -8, 6, -2]
List posNegSort(List<int> list) {
  List positive = list.where((number) => number > 0).toList();
  positive.sort();
  int positiveindex = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] > 0) {
      list[i] = positive[positiveindex];
      positiveindex++;
    }
  }
  print(list);
  return list;
}

// Challenge 3
// The Karaca's Encryption Algorithm
// Make a function that encrypts a given input with these steps:
// Input: "apple"
// Step 1: Reverse the input: "elppa"
//
//  Step 2: Replace all vowels using the following chart:
// a => 0
// e => 1
// o => 2
// u => 3
// "1lpp0"
// Step 3: Add "aca" to the end of the word: "1lpp0aca"
// Output: "1lpp0aca"
String karaca(String str) {
  String temp = String.fromCharCodes(str.runes.toList().reversed);
  List<String> vowels = ['a', 'e', 'o', 'u', 'i'];
  int indexOfVowel;
  for (int i = 0; i < temp.length; i++) {
    if (inList(temp[i], vowels)) {
      indexOfVowel = inListat(temp[i], vowels);
      temp = temp.substring(0, i) +
          indexOfVowel.toString() +
          temp.substring(i + 1, temp.length);
    }
  }
  temp += 'aca';
  print(temp);
  return temp;
}

int inListat(String str, List list) {
  if (inList(str, list)) {
    for (var x in list) {
      if (str == x) return list.indexOf(x);
    }
  }
}

bool inList(String str, List list) {
  for (var x in list) {
    if (str == x) return true;
  }
  return false;
}

main() {
  posNegSort([6, 3, -2, 5, -8, 2, -2]);
  karaca('apple');
}
