import 'dart:io';

void main() async {
  final directory = Directory('d:/Pawfy-App/lib');
  final files = directory.listSync(recursive: true).whereType<File>().where((file) => file.path.endsWith('.dart'));

  for (final file in files) {
    String content = await file.readAsString();
    bool modified = false;

    // We only process if it doesn't look like it's fully using screenutil
    // Actually, we can just safely replace integers if they are not already followed by .w, .h, .sp, .r

    // width: 10 -> width: 10.w
    final widthRegex = RegExp(r'(width:\s*)(\d+)(?!\.)');
    if (widthRegex.hasMatch(content)) {
      content = content.replaceAllMapped(widthRegex, (m) => '${m[1]}${m[2]}.w');
      modified = true;
    }

    // height: 10 -> height: 10.h
    final heightRegex = RegExp(r'(height:\s*)(\d+)(?!\.)');
    if (heightRegex.hasMatch(content)) {
      content = content.replaceAllMapped(heightRegex, (m) => '${m[1]}${m[2]}.h');
      modified = true;
    }

    // size: 10 -> size: 10.sp (assuming usually fonts/icons)
    final sizeRegex = RegExp(r'(size:\s*)(\d+)(?!\.)');
    if (sizeRegex.hasMatch(content)) {
      content = content.replaceAllMapped(sizeRegex, (m) => '${m[1]}${m[2]}.sp');
      modified = true;
    }
    
    // radius: 10 -> radius: 10.r
    final radiusRegex = RegExp(r'(radius:\s*)(\d+)(?!\.)');
    if (radiusRegex.hasMatch(content)) {
      content = content.replaceAllMapped(radiusRegex, (m) => '${m[1]}${m[2]}.r');
      modified = true;
    }

    // EdgeInsets.all(10) -> EdgeInsets.all(10.r)
    final allRegex = RegExp(r'(EdgeInsets\.all\(\s*)(\d+)(?!\.)(\s*\))');
    if (allRegex.hasMatch(content)) {
      content = content.replaceAllMapped(allRegex, (m) => '${m[1]}${m[2]}.r${m[3]}');
      modified = true;
    }

    // symmetric and only arguments
    // horizontal: 10 -> horizontal: 10.w
    final horizRegex = RegExp(r'(horizontal:\s*)(\d+)(?!\.)');
    if (horizRegex.hasMatch(content)) {
      content = content.replaceAllMapped(horizRegex, (m) => '${m[1]}${m[2]}.w');
      modified = true;
    }

    // vertical: 10 -> vertical: 10.h
    final vertRegex = RegExp(r'(vertical:\s*)(\d+)(?!\.)');
    if (vertRegex.hasMatch(content)) {
      content = content.replaceAllMapped(vertRegex, (m) => '${m[1]}${m[2]}.h');
      modified = true;
    }

    final leftRegex = RegExp(r'(left:\s*)(\d+)(?!\.)');
    if (leftRegex.hasMatch(content)) {
      content = content.replaceAllMapped(leftRegex, (m) => '${m[1]}${m[2]}.w');
      modified = true;
    }

    final rightRegex = RegExp(r'(right:\s*)(\d+)(?!\.)');
    if (rightRegex.hasMatch(content)) {
      content = content.replaceAllMapped(rightRegex, (m) => '${m[1]}${m[2]}.w');
      modified = true;
    }

    final topRegex = RegExp(r'(top:\s*)(\d+)(?!\.)');
    if (topRegex.hasMatch(content)) {
      content = content.replaceAllMapped(topRegex, (m) => '${m[1]}${m[2]}.h');
      modified = true;
    }

    final bottomRegex = RegExp(r'(bottom:\s*)(\d+)(?!\.)');
    if (bottomRegex.hasMatch(content)) {
      content = content.replaceAllMapped(bottomRegex, (m) => '${m[1]}${m[2]}.h');
      modified = true;
    }
    
    // BorderRadius.circular(10) -> BorderRadius.circular(10.r)
    final circularRegex = RegExp(r'(BorderRadius\.circular\(\s*)(\d+)(?!\.)(\s*\))');
    if (circularRegex.hasMatch(content)) {
      content = content.replaceAllMapped(circularRegex, (m) => '${m[1]}${m[2]}.r${m[3]}');
      modified = true;
    }
    
    // Radius.circular(10) -> Radius.circular(10.r)
    final radiusCircRegex = RegExp(r'(Radius\.circular\(\s*)(\d+)(?!\.)(\s*\))');
    if (radiusCircRegex.hasMatch(content)) {
      content = content.replaceAllMapped(radiusCircRegex, (m) => '${m[1]}${m[2]}.r${m[3]}');
      modified = true;
    }

    if (modified) {
      if (!content.contains('package:flutter_screenutil/flutter_screenutil.dart')) {
        // Insert import after the last import
        final importIndex = content.lastIndexOf(RegExp(r'import\s+.*;'));
        if (importIndex != -1) {
          final endOfImport = content.indexOf(';', importIndex) + 1;
          content = '${content.substring(0, endOfImport)}\nimport \'package:flutter_screenutil/flutter_screenutil.dart\';${content.substring(endOfImport)}';
        } else {
          content = 'import \'package:flutter_screenutil/flutter_screenutil.dart\';\n$content';
        }
      }
      await file.writeAsString(content);
      print('Updated: ${file.path}');
    }
  }
}
