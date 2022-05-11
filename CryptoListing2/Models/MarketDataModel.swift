//
//  MarketDataModel.swift
//  CryptoListing2
//
//  Created by Mark Skurat on 5/5/22.
//

import Foundation
// JSON DATA
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON RESPONSE: {
 "data": {
 "active_cryptocurrencies": 13419,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 799,
 "total_market_cap": {
 "btc": 48514043.869896695,
 "eth": 643224849.3303825,
 "ltc": 18249407904.437103,
 "bch": 6357841691.597667,
 "bnb": 4665242796.521081,
 "eos": 876663466526.5199,
 "xrp": 2959471017934.4946,
 "xlm": 10323857356281.834,
 "link": 161769278049.91623,
 "dot": 121654530931.56883,
 "yfi": 104907770.944563,
 "usd": 1747267856406.9014,
 "aed": 6417714836582.56,
 "ars": 202988499006303.97,
 "aud": 2459932986071.0083,
 "bdt": 151314072557498.12,
 "bhd": 658760169026.0985,
 "bmd": 1747267856406.9014,
 "brl": 8775652808803.648,
 "cad": 2244865280161.593,
 "chf": 1722154375506.762,
 "clp": 1504240370259265.2,
 "cny": 11629290671887.422,
 "czk": 40734055536414.07,
 "dkk": 12329258406039.002,
 "eur": 1657325496230.4985,
 "gbp": 1413226934886.8865,
 "hkd": 13715266402258.764,
 "huf": 631697429116285.1,
 "idr": 25279661989143564,
 "ils": 5975830795697.26,
 "inr": 133703899738540.42,
 "jpy": 227172486401465.84,
 "krw": 2223257868689391.5,
 "kwd": 535890546095.7072,
 "lkr": 611035058915037.6,
 "mmk": 3239836596199579,
 "mxn": 35399891388303.7,
 "myr": 7597994273585.423,
 "ngn": 725325832551634.4,
 "nok": 16592591975671.855,
 "nzd": 2722194396781.971,
 "php": 91792706352729.28,
 "pkr": 324467640934761.1,
 "pln": 7781509816543.805,
 "rub": 113572410666448.61,
 "sar": 6554234116007.178,
 "sek": 17391067177031.947,
 "sgd": 2418262394963.5586,
 "thb": 60039618081853.85,
 "try": 25976107040844.43,
 "twd": 51869042384455.914,
 "uah": 51443699728367.555,
 "vef": 174953930462.02292,
 "vnd": 40110280911676776,
 "zar": 27989059205693.023,
 "xdr": 1268790784804.8628,
 "xag": 77701246191.9149,
 "xau": 929441663.5370857,
 "bits": 48514043869896.695,
 "sats": 4851404386989670
 },
 "total_volume": {
 "btc": 3266810.3512233105,
 "eth": 43313099.22528258,
 "ltc": 1228867970.8043182,
 "bch": 428120630.49722856,
 "bnb": 314145394.67203367,
 "eos": 59032252488.95838,
 "xrp": 199283130910.73563,
 "xlm": 695181876952.9886,
 "link": 10893125163.109879,
 "dot": 8191901750.88803,
 "yfi": 7064218.207918116,
 "usd": 117656502413.55534,
 "aed": 432152333364.9895,
 "ars": 13668720989563.81,
 "aud": 165645530678.9817,
 "bdt": 10189098642080.33,
 "bhd": 44359207509.46583,
 "bmd": 117656502413.55534,
 "brl": 590929783372.0808,
 "cad": 151163427109.9018,
 "chf": 115965425504.36511,
 "clp": 101291659492853.9,
 "cny": 783086383113.9009,
 "czk": 2742926040767.2144,
 "dkk": 830220401576.2866,
 "eur": 111600016295.3151,
 "gbp": 95163049938.63425,
 "hkd": 923550598520.3214,
 "huf": 42536872535557.36,
 "idr": 1702267114302638.5,
 "ils": 402397003904.6017,
 "inr": 9003275110113.34,
 "jpy": 15297208207991.54,
 "krw": 149708439856111.4,
 "kwd": 36085484603.242096,
 "lkr": 41145521918914.01,
 "mmk": 218162224470928.62,
 "mxn": 2383737210808.968,
 "myr": 511629300745.3462,
 "ngn": 48841567281915.19,
 "nok": 1117302267465.3628,
 "nzd": 183305536378.25153,
 "php": 6181083648357.105,
 "pkr": 21848812498197.195,
 "pln": 523986763193.83954,
 "rub": 7647672656881.099,
 "sar": 441345188868.0663,
 "sek": 1171069524220.82,
 "sgd": 162839540752.92072,
 "thb": 4042912735934.5825,
 "try": 1749163924431.5999,
 "twd": 3492727281691.8037,
 "uah": 3464085806339.788,
 "vef": 11780945586.669289,
 "vnd": 2700922669405573,
 "zar": 1884710921632.655,
 "xdr": 85437092823.11987,
 "xag": 5232201134.241151,
 "xau": 62586199.89386653,
 "bits": 3266810351223.3105,
 "sats": 326681035122331.06
 },
 "market_cap_percentage": {
 "btc": 39.22914167089103,
 "eth": 18.79921682577374,
 "usdt": 4.780110539486913,
 "bnb": 3.6053582821662573,
 "usdc": 2.7997610212805824,
 "xrp": 1.6270214029128827,
 "sol": 1.5765879641126455,
 "luna": 1.5756777803455315,
 "ada": 1.4538050099047148,
 "ust": 1.0729369893461005
 },
 "market_cap_change_percentage_24h_usd": -7.352232613982894,
 "updated_at": 1651779545
 }
 }
 */


struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}

