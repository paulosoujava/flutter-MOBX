import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  _LoginStore() {
    autorun((_) {
      print(email);
    });
  }

  @observable
  String email = "";

  @action
  void setEmail(String v) => email = v;

  @observable
  String password = "";

  @action
  void setPassword(String v) => password = v;

  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @observable
  bool loading = false;

  @action
  Future<void> login() async {
    loading = true;
    await Future.delayed(Duration(seconds: 2));
    loading = false;
    loggedIn = true;
  }

  @observable
  bool loggedIn = false;

  //operacoes com observable geralmente sao feitas com computed
  /*
  @computed
  bool get isFormValid => email.length > 6 && password.length > 6;

   OU
   */
  @computed
  bool get isPasswordValid => password.length > 6;

  @computed
  bool get isEmaildValid =>
      RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")
          .hasMatch(email);


  @computed
  Function get loginPressed =>
      (isEmaildValid && isPasswordValid && !loading) ? login : null;

}