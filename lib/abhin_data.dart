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
    print('[abhin_data] counter is now => $v');
    _counterSubject.sink.add(v);
  }
}
