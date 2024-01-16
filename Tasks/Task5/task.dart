void main(List<String> args) {
  checkCredintials(
      email: 'abdelrahmantelabrak@gmail.com',
      url: 'https://docs.flutter.dev/ui',
      phoneNumber: '+201599722880');
}

void checkCredintials(
    {required String email, required String url, required String phoneNumber}) {
  bool alright = true;
  if (!checkEmail(email)) {
    print('The Email is not valid');
    alright = false;
  }
  if (!checkUrl(url)) {
    print("The Url is not valid");
    alright = false;
  }
  if (!checkPhone(phoneNumber)) {
    print("The Phone number is not valid");
    alright = false;
  }
  if(alright)
    print('All your data is Correct!');
}

bool checkEmail(String email) {
  String pattern = r'^[\w-\.]+@([\w-]+\.)[\w-]{2,4}$';
  RegExp regex = RegExp(pattern);
  if (regex.hasMatch(email))
    return true;
  else
    return false;
}

bool checkUrl(String url) {
  String pattern =
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$';
  RegExp regex = RegExp(pattern);
  if (regex.hasMatch(url))
    return true;
  else
    return false;
}

bool checkPhone(String phoneNumber) {
  String pattern = r'^\+201[0125][0-9]{8,8}$';
  //Egyption phone number should always start with +201 then either 0 'Vodafone' or 1 'Etisalat' or 2 'Orange' or 5 'WE'
  //then EXACTLY 8 numbers.
  RegExp regex = RegExp(pattern);
  if (regex.hasMatch(phoneNumber))
    return true;
  else
    return false;
}
