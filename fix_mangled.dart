import 'dart:io';

void main() async {
  final directory = Directory('d:/Pawfy-App/lib');
  final files = directory.listSync(recursive: true).whereType<File>().where((file) => file.path.endsWith('.dart'));

  for (final file in files) {
    String content = await file.readAsString();
    String originalContent = content;

    // 1.h4.h -> 14.h
    // 2.w4.w -> 24.w
    // 3.h0.r -> 30.r
    // regex: (\d+)\.[hw]\d+\.[hwr]
    // wait, it is (\d+)\.[hw](\d+)\.([hwrsp]+)
    final botchRegex = RegExp(r'(\d+)\.[hw](\d+)\.([hwrsp]+)');
    content = content.replaceAllMapped(botchRegex, (m) {
      return '${m[1]}${m[2]}.${m[3]}';
    });

    if (content != originalContent) {
      await file.writeAsString(content);
      print('Fixed mangled dimensions in: ${file.path}');
    }
  }
}
