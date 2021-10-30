import 'package:rxdart/rxdart.dart';

class AbhinData {
  AbhinData() {
    _counterSubject.sink.add(0);
  }
  final _counterSubject = BehaviorSubject<int>();
  Stream<int> get counter => _counterSubject.stream;
  increment() {
    int v = _counterSubject.value;
    v++;
    _counterSubject.sink.add(v);
  }
}
