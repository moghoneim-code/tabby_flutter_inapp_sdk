enum Lang { en, ar }

enum Currency { aed, sar, kwd, bhd, qar }

extension CurrencyExt on Currency {
  String get displayName {
    switch (this) {
      case Currency.aed:
        return 'AED';
      case Currency.sar:
        return 'SAR';
      case Currency.kwd:
        return 'KWD';
      case Currency.bhd:
        return 'BHD';
      case Currency.qar:
        return 'QAR';
    }
  }

  int get decimals {
    switch (this) {
      case Currency.aed:
        return 2;
      case Currency.sar:
        return 2;
      case Currency.kwd:
        return 3;
      case Currency.bhd:
        return 3;
      case Currency.qar:
        return 2;
    }
  }
}

enum TabbyPurchaseType {
  installments,
}

extension TabbyPurchaseTypeExt on TabbyPurchaseType {
  String get name {
    switch (this) {
      case TabbyPurchaseType.installments:
        return 'installments';
    }
  }
}

enum OrderHistoryItemStatus {
  newOne,
  processing,
  complete,
  refunded,
  canceled,
  unknown,
}

extension OrderHistoryItemStatusExt on OrderHistoryItemStatus {
  String get name {
    switch (this) {
      case OrderHistoryItemStatus.newOne:
        return 'new';
      case OrderHistoryItemStatus.processing:
        return 'processing';
      case OrderHistoryItemStatus.complete:
        return 'complete';
      case OrderHistoryItemStatus.refunded:
        return 'refunded';
      case OrderHistoryItemStatus.canceled:
        return 'canceled';
      case OrderHistoryItemStatus.unknown:
        return 'unknown';
    }
  }
}

enum OrderHistoryItemPaymentMethod {
  card,
  cod,
}

enum Environment {
  stage,
  production,
}

extension EnvironmentExt on Environment {
  String get host {
    switch (this) {
      case Environment.stage:
        return 'https://api.tabby.dev/';
      case Environment.production:
        return 'https://api.tabby.ai/';
    }
  }
}

enum WebViewResult {
  close,
  authorized,
  rejected,
  expired,
}
