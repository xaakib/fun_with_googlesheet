class FeedbackForm {
  String _name;
  String _email;
  String _mobileNum;
  String _feedBack;

  FeedbackForm(this._name, this._email, this._feedBack, this._mobileNum);

  String toParams() =>
      "?name=$_name&email=$_email&mobileNum=$_mobileNum&feedback$_feedBack";
}
