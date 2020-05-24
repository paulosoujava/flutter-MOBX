import 'package:mobx/mobx.dart';
/*
se utilizar a opção:
flutter packages pub run build_runner build
toda vez que mudar algo nesta classe vai ter que rodar o comando acima
mas se usar o
flutter packages pub run build_runner watch
ele fica observando e nao precisa rodar o cmando com build
 */
part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store{

  @observable
  int count;

  @action
  void increment(){
    count++;
  }


}