import 'package:lodise_app/ui/home/view_model/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get providers {
  return [
    ChangeNotifierProvider(
      create: (_) => HomeViewModel()
    )
  ];
}