
String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Name is Required";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is Required";
    } else if(value.length < 4){
      return "password must 4 digits";
    }
    return null;
  }

  String? validateEmail(String? value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return "Email is Required";
    } else if(!regExp.hasMatch(value)){
      return "Invalid Email";
    }else {
      return null;
    }
  }

  String? validateDescription(String? value) {
    if (value == null || value.isEmpty) {
      return "Details is Required";
    }
    return null;
  }


