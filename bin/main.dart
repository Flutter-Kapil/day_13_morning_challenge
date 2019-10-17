// Challenge 1
// Read the two problems below and write test cases for them, make sure test cases run and fail

// Challenge 2
// Repeat the Shorter String
// Write a function that repeats the shorter string until it is equal to the length of the longer string.
// Examples:
// lengthen("abcdefg", "ab") ➞ "abababa"
// lengthen("ingenius", "forest") ➞ "forestfo"
String lengthen(String word1, String word2) {
  String newWord = '';
  if (word1.length > word2.length) {
    for (int i = 0; newWord.length < word1.length; i++) {
      newWord = newWord + word2;
    }
    newWord = newWord.substring(0, word1.length);
  } else {
    for (int i = 0; newWord.length < word2.length; i++) {
      newWord = newWord + word1;
    }
    newWord = newWord.substring(0, word2.length);
  }

  return newWord;
}

// Challenge 3
// Given what is supposed to be typed and what is actually typed,
// write a function that returns the broken key(s). The function looks like:
// findBrokenKeys(correct phrase, what you actually typed)
// Examples
// findBrokenKeys("happy birthday", "hawwy birthday") ➞ ["p"]
// findBrokenKeys("beethoven", "affthoif5") ➞ ["b", "e", "v", "n"]
List findBrokenKeys(String correct, String typed) {
  List brokenWords = [];
  for (int i = 0; i < correct.length; i++) {
    if (correct[i] != typed[i]) {
      brokenWords.add(correct[i]);
    }
  }
  return brokenWords.toSet().toList();
}

main() {
  print(lengthen("abcdefg", "ab"));
  print(lengthen("ingenius", "forest"));

  print(findBrokenKeys("happy birthday", "hawwy birthday"));
  print(findBrokenKeys("beethoven", "affthoif5"));
}
