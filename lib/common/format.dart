class Format {

  String formatUuId(String uuid) {
    final result = uuid.replaceAll("-", "");
    return result;
  }
}