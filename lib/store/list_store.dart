import 'package:mobx/mobx.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {

  @observable
  String newTodoTitle = "";
  @action
  void setNewTodoTitle(String v) => newTodoTitle = v;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

 /*
  //ASSIM:
  @observable
  List<String> todoList = [];
  @action
  void addTodo(){
    todoList = List.from(todoList..add(newTodoTitle));
    todoList.add(newTodoTitle);
  }
  //OU
  */
  @observable
  ObservableList<String> todoList = ObservableList<String>();
  @action
  void addTodo(){
    todoList.add(newTodoTitle);
  }
}
