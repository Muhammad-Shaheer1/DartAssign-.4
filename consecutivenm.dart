//Create a list of integers and find the longest subsequence of consecutive numbers in the list.
void main() {

  List<int> list = [1, 18, 16, 76, 86, 4, 2, 9, 3,5];
  list.sort();
  List<int> crntseq = [list[0]];
  List<int> longseq = [list[0]];
  for (int i = 1; i < list.length; i++) {
    if (list[i] == list[i - 1] + 1) {
      crntseq.add(list[i]);
    } else if (crntseq.length > longseq.length) {
      longseq = crntseq;
    } else {
      crntseq = [list[i]];
    }
  }
  print(list);
  print("The Longest Sequence is $longseq");
}