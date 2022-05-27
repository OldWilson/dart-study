import 'dart:async';
import 'dart:isolate';

void main() {
  print('project start');
  ctask();

  scheduleMicrotask(() {
    // 执行判断为微任务，添加到微任务队列
    scheduleMicrotask(() {
      print('h1-1 task complete');
    });

    Timer.run(() {
      print('l1-1 task complete');
    });

    print('H1 task complete');
  });

  scheduleMicrotask(() {
    // 执行判断为微任务，添加到微任务队列
    scheduleMicrotask(() {
      print('h2-1 task complete');
    });

    Timer.run(() {
      print('l2-1 task complete');
    });

    print('H2 task complete');
  });

  Timer.run(() {
    // 执行判断为事件任务，添加到事件任务队列
    scheduleMicrotask(() {
      print('h3-1 task complete');
    });

    Timer.run(() {
      print('l3-1 task complete');
    });

    print('L3 task complete');
  });

  Timer.run(() {
    // 执行判断为事件任务，添加到事件任务队列
    scheduleMicrotask(() {
      print('h4-1 task complete');
    });

    Timer.run(() {
      print('l4-1 task complete');
    });

    print('L4 task complete');
  });
}

void ctask() async {
    final receive = ReceivePort();
    Isolate isolate = await Isolate.spawn(doCtask, receive.sendPort);
    receive.listen((data) {
        print(data);
    });
}

void doCtask(SendPort port) {
    scheduleMicrotask(() {
      print('h5-1 task complete');
    });

    Timer.run(() {
      print('l5-1 task complete');
    });

    print('C1 task complete');
}
