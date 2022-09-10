class setday {
  final String? dateTime;
  final int? temp;

  setday({this.dateTime, this.temp});

  factory setday.fromJson(dynamic json) {
    if (json == null) {
      return setday();
    }

    var f = json['dt_txt'].split(' ')[0].split('-')[2];
    var l = json['dt_txt'].split(' ')[1].split(':')[0];
    var fandl = '$f-$l';
    return setday(
      dateTime: '$fandl',
      temp: (double.parse(json['main']['temp'].toString()) - 273.15).round(),
    );
  }




}
