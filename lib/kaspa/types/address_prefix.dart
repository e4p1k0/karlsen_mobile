enum AddressPrefix {
  unknown,
  karlsen,
  kaspaTest,
  kaspaDev,
  kaspaSim;

  static AddressPrefix parseBech32Prefix(String prefix) {
    switch (prefix) {
      case 'karlsen':
        return AddressPrefix.karlsen;
      case 'kaspatest':
        return AddressPrefix.kaspaTest;
      case 'kaspadev':
        return AddressPrefix.kaspaDev;
      case 'kaspasim':
        return AddressPrefix.kaspaSim;
      default:
        return AddressPrefix.unknown;
    }
  }

  @override
  String toString() => name.toLowerCase();
}
