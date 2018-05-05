import 'package:fave_reads/fave_reads.dart';

Future main() async {
  var app = new Application<FaveReadsSink>()
      ..configuration.configurationFilePath = "config.yaml"
      ..configuration.port = 8000;

  await app.start(numberOfInstances: 2);

  print("Application started on port: ${app.configuration.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}