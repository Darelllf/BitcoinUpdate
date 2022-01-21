// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.time,
        required this.disclaimer,
        required this.chartName,
        required this.bpi,
    });

    Time time;
    String disclaimer;
    String chartName;
    Bpi bpi;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        time: json["time"],
        disclaimer: json["disclaimer"],
        chartName: json["chartName"],
        bpi: json["bpi"],
    );

    Map<String, dynamic> toJson() => {
        "time": time.toJson(),
        "disclaimer": disclaimer,
        "chartName": chartName,
        "bpi": bpi.toJson(),
    };
    static List<Welcome> bitcoinData() {
      return[
Welcome(
  time: Time(updated:"Jan 21, 2022 03:32:00 UTC" , updatedIso: DateTime.now(), updateduk:"Jan 21, 2022 at 03:32 GMT" ),
  disclaimer: "This data was produced from the CoinDesk Bitcoin Price Index (USD). Non-USD currency data converted using hourly conversion rate from openexchangerates.org", 
  chartName: 'Bitcoin', 
  bpi: Bpi(
    usd: Eur(code: "USD",symbol: "&#36;",rate: "38,794.3750",description: "United States Dollar",rateFloat: 38794.375),
    gbp: Eur(code: "GBP",symbol: "&pound;",rate: "28,523.7970",description: "British Pound Sterling",rateFloat: 28523.797), 
    eur: Eur(code: "EUR",symbol: "&euro;",rate: "34,226.7253",description:  "Euro",rateFloat: 34226.7253)
    ),
  ),
  
  Welcome(
  time: Time(updated:"Jan 21, 2022 03:32:00 UTC" , updatedIso: DateTime.now(), updateduk:"Jan 21, 2022 at 03:32 GMT" ),
  disclaimer: "This data was produced from the CoinDesk Bitcoin Price Index (USD). Non-USD currency data converted using hourly conversion rate from openexchangerates.org", 
  chartName: 'Bitcoin', 
  bpi: Bpi(
    usd: Eur(code: "USD",symbol: "&#36;",rate: "38,794.3750",description: "United States Dollar",rateFloat: 38794.375),
    gbp: Eur(code: "GBP",symbol: "&pound;",rate: "28,523.7970",description: "British Pound Sterling",rateFloat: 28523.797), 
    eur: Eur(code: "EUR",symbol: "&euro;",rate: "34,226.7253",description:  "Euro",rateFloat: 34226.7253)
    ),
  ),
      ];
    }
}

class Bpi {
    Bpi({
        required this.usd,
        required this.gbp,
        required this.eur,
    });

    Eur usd;
    Eur gbp;
    Eur eur;

    factory Bpi.fromJson(Map<String, dynamic> json) => Bpi(
        usd: Eur.fromJson(json["USD"]),
        gbp: Eur.fromJson(json["GBP"]),
        eur: Eur.fromJson(json["EUR"]),
    );

    Map<String, dynamic> toJson() => {
        "USD": usd.toJson(),
        "GBP": gbp.toJson(),
        "EUR": eur.toJson(),
    };
}

class Eur {
    Eur({
        required this.code,
        required this.symbol,
        required this.rate,
        required this.description,
        required this.rateFloat,
    });

    String code;
    String symbol;
    String rate;
    String description;
    double rateFloat;

    factory Eur.fromJson(Map<String, dynamic> json) => Eur(
        code: json["code"],
        symbol: json["symbol"],
        rate: json["rate"],
        description: json["description"],
        rateFloat: json["rate_float"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "symbol": symbol,
        "rate": rate,
        "description": description,
        "rate_float": rateFloat,
    };
}

class Time {
    Time({
        required this.updated,
        required this.updatedIso,
        required this.updateduk,
    });

    String updated;
    DateTime updatedIso;
    String updateduk;

    factory Time.fromJson(Map<String, dynamic> json) => Time(
        updated: json["updated"],
        updatedIso: DateTime.parse(json["updatedISO"]),
        updateduk: json["updateduk"],
    );

    Map<String, dynamic> toJson() => {
        "updated": updated,
        "updatedISO": updatedIso.toIso8601String(),
        "updateduk": updateduk,
    };

    
}
