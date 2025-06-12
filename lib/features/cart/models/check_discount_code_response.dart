class CheckDiscountCodeResponse {
  const CheckDiscountCodeResponse({
    required this.id,
    required this.code,
    required this.discount,
    required this.isValid,
  });

  final String id;
  final String code;
  final double discount;
  final bool isValid;
}
