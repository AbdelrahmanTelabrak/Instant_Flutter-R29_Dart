void main(List<String> args) {
  var list = [1, 2, 3, 4, 5, 7, 4, 2, 8];

  print('Element found at index \'${findPeakElement(list)}\'');
}

int findPeakElement(List<int> list){
  for (var i = 1; i < list.length-1; i++) {
    if (list[i]>= list[i-1] && list[i]>= list[i+1]){
      return i;
    }
  }
  return -1;
}