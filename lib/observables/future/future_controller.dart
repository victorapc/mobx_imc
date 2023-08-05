import 'package:mobx/mobx.dart';
part 'future_controller.g.dart';

class FutureController = FutureControllerBase with _$FutureController;

abstract class FutureControllerBase with Store {
  @observable
  // var nomeFuture = Future.value('').asObservable();
  // ou
  var nomeFuture = ObservableFuture.value('');

  Future<void> buscarNome() async {
    /*nomeFuture =
        Future.delayed(const Duration(seconds: 1), () => 'Victor Alexandre')
            .asObservable();*/
    // ou
    final buscarNomeFuture =
        Future.delayed(const Duration(seconds: 1), () => 'Victor Alexandre');
    nomeFuture = ObservableFuture(buscarNomeFuture);
  }
}
