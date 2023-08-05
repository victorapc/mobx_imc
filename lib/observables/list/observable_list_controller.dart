import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';
part 'observable_list_controller.g.dart';

class ObservableListController = ObservableListControllerBase
    with _$ObservableListController;

abstract class ObservableListControllerBase with Store {
  @observable
  // var products = <ProductModel>[];
  // ObservableList products = ObservableList();
  // Ou
  var products = <ProductModel>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductModel(name: 'Computador'),
      ProductModel(name: 'Celular'),
      ProductModel(name: 'Teclado'),
      ProductModel(name: 'Mouse'),
    ];
    products.addAll(productsData);
  }

  @action
  void addProduct() {
    products.add(ProductModel(name: 'Computador'));
  }

  @action
  void removeProduct() {
    products.removeAt(0);
  }
}
