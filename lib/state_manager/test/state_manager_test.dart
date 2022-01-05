import 'package:state/state_manager/state_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('State management', () {
    late StateManager controller;

    setUp(() {
      controller = StateManager(initialState: 0);
    });

    test('It should be null on init.', () async {
      // Assert
      expect(controller.state, isNull);
    });

    test('It should change value.', () async {
      // Arrange
      const String data = 'newValue';

      // Act
      controller.setState(data);

      // Assert
      expect(controller.state, data);
    });

    test('It should listen value.', () async {
      // Arrange
      const String data = 'newValue';

      // Act
      controller.setState(data);

      // Assert
      controller.listen((state) {
        expect(controller.state, data);
      });

      controller.setState(data);
      expect(controller.state, data);
    });
  });
}
