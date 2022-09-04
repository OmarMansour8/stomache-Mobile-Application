class order  {
  String _item = '';
  int quantuty = 0;
  double price = 0;
  String customerName = '';
  String customMobile = '';

  order(this._item, this.quantuty, this.price, this.customerName,
      this.customMobile);

  String get item => _item;
}