import 'dart:html';

import 'package:over_react/over_react.dart';
import 'package:react/react_dom.dart' as react_dom;
import 'package:test3/test_over_react.dart';

void main() {
  setClientConfiguration();

  // Mount / render your component.
  react_dom.render(Foo()(), querySelector('#output'));
}
