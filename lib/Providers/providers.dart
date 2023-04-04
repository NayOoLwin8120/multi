import 'package:multivendor/Providers/auth.dart';
import 'package:provider/provider.dart';
import "package:provider/single_child_widget.dart";

final List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (context) => AuthProvider(),
  ),
];
