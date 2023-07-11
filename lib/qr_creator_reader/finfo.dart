FlightInformation _fInfo = FlightInformation();
// FlightInformation fInfo() {
//   if (_fInfo.id == null) {
//     if (hiveHasData(HiveGet().hiveFlightBoxKey)) {
//       _fInfo = FlightInformation.fromJson(hiveRead(HiveGet().hiveFlightBoxKey));
//       for (var element in _fInfo.flightProducts!) {
//         element.brokenProductNamePicture ??= <String>[];
//       }
//       for (var element in _fInfo.flightRoots!) {
//         element.crewNotes ??= <CrewNote>[];
//         element.flightBrokenProducts ??= <FlightBrokenProducts>[];
//       }
//     }
//   }

//   return _fInfo;
// }

// int calculateStockAmount(String barcode) {
//   var roots = fInfo().flightRoots!;
//   bool firstSale = true; // daha once satis yapilmamissa if in icine girmiyor
//   int stockAmount = fInfo()
//       .flightProducts!
//       .firstWhere((element) => element.barcode == barcode)
//       .qtyRealLading!;

//   for (int i = 0; i < roots.length; i++) {
//     // ignore: prefer_is_empty

//     // satis var ise onlari dusmemiz gerek
//     for (int j = 0; j < roots[i].flightSalesDetails!.length; j++) {
//       if (roots[i].flightSalesDetails![j].barcode == barcode) {
//         firstSale = false;
//         var model = roots[i].flightSalesDetails![j];

//         stockAmount = stockAmount +
//             (model.qtyReusable ?? 0) -
//             ((model.qtyBroken ?? 0) +
//                 (model.qtyFree ?? 0) +
//                 (model.qtySales ?? 0));

//         print(
//             'stok amount: $stockAmount | productStokSize:  | Free ${model.qtyFree ?? 0} | sales: ${model.qtySales ?? 0}');
//       }
//     }
//   }

//   return stockAmount;
// }

class FlightInformation {
  String? userid;
  String? rType;
  String? rMessage;
  String? id;
  int? flightNo;
  String? flightDate;
  String? destinationInfo;
  String? rootsInfo;
  String? scheduledFirstApprivalTime;
  String? airplaneCode;
  String? envelopeNo;
  String? charter;
  int? teamCabinPrim;
  bool? isSeatSelection;
  bool? isIncrementButtonSelection;
  bool? imageSelection;
  bool? stockCheck;
  bool? deliverStockCheck;
  String? sealControlMessage;
  String? sealControlImage;
  List<FlightExchangeRates>? flightExchangeRates;
  List<CabinSupervisors>? cabinSupervisors;
  List<FlightProducts>? flightProducts;
  List<FlightRoots>? flightRoots;
  List<ShortLists>? shortLists;
  List<BlackLists>? blackLists;
  int? maxSalesAmount;

  FlightInformation(
      {this.id,
      this.flightNo,
      this.flightDate,
      this.destinationInfo,
      this.rootsInfo,
      this.scheduledFirstApprivalTime,
      this.airplaneCode,
      this.envelopeNo,
      this.flightExchangeRates,
      this.cabinSupervisors,
      this.flightProducts,
      this.flightRoots,
      this.shortLists,
      this.blackLists,
      this.userid,
      this.rType,
      this.charter,
      this.stockCheck,
      this.deliverStockCheck,
      this.isSeatSelection,
      this.isIncrementButtonSelection,
      this.imageSelection,
      this.teamCabinPrim,
      this.sealControlMessage,
      this.sealControlImage,
      this.maxSalesAmount,
      this.rMessage});

  FlightInformation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    flightNo = json['flightNo'];
    rMessage = json['rMessage'];
    rType = json['rType'];
    flightDate = json['flightDate'];
    destinationInfo = json['destinationInfo'];
    rootsInfo = json['rootsInfo'];
    teamCabinPrim = json['teamCabinPrim'];
    charter = json['charter'];
    scheduledFirstApprivalTime = json['scheduledFirstApprivalTime'];
    airplaneCode = json['airplaneCode'];
    isSeatSelection = json['isSeatSelection'];
    isIncrementButtonSelection = json['isIncrementButtonSelection'];
    imageSelection = json['imageSelection'];
    envelopeNo = json['envelopeNo'];
    stockCheck = json['stockCheck'];
    deliverStockCheck = json['deliverStockCheck'];
    sealControlMessage = json['sealControlMessage'];
    sealControlImage = json['sealControlImage'];
    maxSalesAmount = json['maxSalesAmount'];
    if (json['flightExchangeRates'] != null) {
      flightExchangeRates = <FlightExchangeRates>[];
      json['flightExchangeRates'].forEach((v) {
        flightExchangeRates!
            .add(FlightExchangeRates.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['cabinSupervisors'] != null) {
      cabinSupervisors = <CabinSupervisors>[];
      json['cabinSupervisors'].forEach((v) {
        cabinSupervisors!
            .add(CabinSupervisors.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['flightProducts'] != null) {
      flightProducts = <FlightProducts>[];
      json['flightProducts'].forEach((v) {
        flightProducts!
            .add(FlightProducts.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['flightRoots'] != null) {
      flightRoots = <FlightRoots>[];
      json['flightRoots'].forEach((v) {
        flightRoots!.add(FlightRoots.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['shortLists'] != null) {
      shortLists = <ShortLists>[];
      json['shortLists'].forEach((v) {
        shortLists!.add(ShortLists.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['blackLists'] != null) {
      blackLists = <BlackLists>[];
      json['blackLists'].forEach((v) {
        blackLists!.add(BlackLists.fromJson(Map<String, dynamic>.from(v)));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['rMessage'] = rMessage;
    data['rType'] = rType;
    data['userid'] = userid;
    data['flightNo'] = flightNo;
    data['flightDate'] = flightDate;
    data['destinationInfo'] = destinationInfo;
    data['rootsInfo'] = rootsInfo;
    data['teamCabinPrim'] = teamCabinPrim;
    data['scheduledFirstApprivalTime'] = scheduledFirstApprivalTime;
    data['airplaneCode'] = airplaneCode;
    data['envelopeNo'] = envelopeNo;
    data['charter'] = charter;
    data['stockCheck'] = stockCheck;
    data['deliverStockCheck'] = deliverStockCheck;
    data['isSeatSelection'] = isSeatSelection;
    data['isIncrementButtonSelection'] = isIncrementButtonSelection;
    data['imageSelection'] = imageSelection;
    data['sealControlMessage'] = sealControlMessage;
    data['sealControlImage'] = sealControlImage;
    data['maxSalesAmount'] = maxSalesAmount;

    if (flightExchangeRates != null) {
      data['flightExchangeRates'] =
          flightExchangeRates!.map((v) => v.toJson()).toList();
    }
    if (cabinSupervisors != null) {
      data['cabinSupervisors'] =
          cabinSupervisors!.map((v) => v.toJson()).toList();
    }
    if (flightProducts != null) {
      data['flightProducts'] = flightProducts!.map((v) => v.toJson()).toList();
    }
    if (flightRoots != null) {
      data['flightRoots'] = flightRoots!.map((v) => v.toJson()).toList();
    }
    if (shortLists != null) {
      data['shortLists'] = shortLists!.map((v) => v.toJson()).toList();
    }
    if (blackLists != null) {
      data['blackLists'] = blackLists!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FlightExchangeRates {
  String? name;
  double? pSatis;

  FlightExchangeRates({this.name, this.pSatis});

  FlightExchangeRates.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    pSatis = json['pSatis'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['pSatis'] = pSatis;
    return data;
  }
}

class CabinSupervisors {
  bool? isChecked;
  String? code;
  String? supervisorInfo;
  String? id;
  int? cabinPrim;

  CabinSupervisors(
      {this.code,
      this.supervisorInfo,
      this.isChecked,
      this.id,
      this.cabinPrim});

  CabinSupervisors.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    id = json['id'];
    supervisorInfo = json['supervisorInfo'];
    isChecked = json['isChecked'];
    cabinPrim = json['cabinPrim'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['id'] = id;
    data['supervisorInfo'] = supervisorInfo;
    data['isChecked'] = isChecked;
    data['cabinPrim'] = cabinPrim;
    return data;
  }
}

class FlightProducts {
  String? id;
  String? category;
  String? barcode;
  String? name;
  double? price;
  String? fileName;
  String? fileUrl;
  int? qtyLading;
  int? qtyRealLading;
  int? qtySales;
  int? qtyFree;
  int? qtyPreOrder;
  int? qty;
  int? dispose;
  List<String>? brokenProductNamePicture;
  int? qtyDelivery;

  int? get stock {
    return int.parse(qtyRealLading.toString()) - int.parse(qtySales.toString());
  }

  FlightProducts(
      {this.category,
      this.barcode,
      this.name,
      this.price,
      this.qtyLading,
      this.qtyRealLading,
      this.qtySales,
      this.id,
      this.qtyFree,
      this.dispose,
      this.fileName,
      this.fileUrl,
      this.qty,
      this.qtyPreOrder,
      this.brokenProductNamePicture,
      this.qtyDelivery});

  FlightProducts.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    id = json['id'];
    barcode = json['barcode'];
    name = json['name'];
    price = json['price'];
    qtyLading = json['qtyLading'];
    qtyRealLading = json['qtyRealLading'];
    qtySales = json['qtySales'];
    qtyFree = json['qtyFree'];
    dispose = json['dispose'];
    fileName = json['fileName'];
    fileUrl = json['fileUrl'];
    qty = json['qty'];
    qtyPreOrder = json['qtyPreOrder'];
    qtyDelivery = json['qtyDelivery'];

    if (json['brokenProductNamePicture'] != null) {
      brokenProductNamePicture = <String>[];
      json['brokenProductNamePicture'].forEach((v) {
        brokenProductNamePicture!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category'] = category;
    data['barcode'] = barcode;
    data['name'] = name;
    data['id'] = id;
    data['price'] = price;
    data['qtyLading'] = qtyLading;
    data['qtyRealLading'] = qtyRealLading;
    data['qtySales'] = qtySales;
    data['qtyFree'] = qtyFree;
    data['qty'] = qty;
    data['qtyPreOrder'] = qtyPreOrder;
    data['dispose'] = dispose;
    data['qtyDelivery'] = qtyDelivery;
    data['brokenProductNamePicture'] = brokenProductNamePicture != null
        ? brokenProductNamePicture!.map((v) => v).toList()
        : null;

    return data;
  }
}

class FlightPayments {
  String? seat;
  String? exchangeName;
  double? amount;
  double? pSatis;
  double? eurAmount;

  FlightPayments(
      {this.seat, this.exchangeName, this.amount, this.pSatis, this.eurAmount});

  FlightPayments.fromJson(Map<String, dynamic> json) {
    seat = json['seat'];
    exchangeName = json['exchangeName'];
    amount = json['amount'];
    pSatis = json['pSatis'];
    eurAmount = json['eurAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['seat'] = seat;
    data['exchangeName'] = exchangeName;
    data['amount'] = amount;
    data['pSatis'] = pSatis;
    data['eurAmount'] = eurAmount;
    return data;
  }
}

class FlightSalesDetails {
  String? seat;
  String? barcode;
  String? name;
  int? qtySales;
  String? desc;
  int? qtyFree;
  int? qtyPreOrder;
  double? price;
  int? qtyReusable;
  int? qtyBroken;

  FlightSalesDetails(
      {this.seat,
      this.barcode,
      this.name,
      this.qtySales,
      this.desc,
      this.price,
      this.qtyFree,
      this.qtyReusable,
      this.qtyPreOrder,
      this.qtyBroken});

  FlightSalesDetails.fromJson(Map<String, dynamic> json) {
    seat = json['seat'];
    barcode = json['barcode'];
    name = json['name'];
    qtySales = json['qtySales'];
    desc = json['desc'];
    price = json['price'];
    qtyFree = json['qtyFree'];
    qtyReusable = json['qtyReusable'];
    qtyBroken = json['qtyBroken'];
    qtyPreOrder = json['qtyPreOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['seat'] = seat;
    data['barcode'] = barcode;
    data['name'] = name;
    data['qtySales'] = qtySales;
    data['desc'] = desc;
    data['price'] = price;
    data['qtyFree'] = qtyFree;
    data['qtyReusable'] = qtyReusable;
    data['qtyBroken'] = qtyBroken;
    data['qtyPreOrder'] = qtyPreOrder;
    return data;
  }
}

class JackPot {
  double? upperLimit;
  int? calculationType; // 0 -> tutarsal odul | 1 -> oransal odul
  double? amount;

  JackPot({this.upperLimit, this.calculationType, this.amount});

  JackPot.fromJson(Map<String, dynamic> json) {
    upperLimit = json['upperLimit'];
    calculationType = json['calculationType'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['upperLimit'] = upperLimit;
    data['calculationType'] = calculationType;
    data['amount'] = amount;
    return data;
  }
}

class CrewNote {
  String? author;
  String? title;
  String? message;

  CrewNote({this.author, this.title, this.message});

  CrewNote.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['author'] = author;
    data['title'] = title;
    data['message'] = message;
    return data;
  }
}

//ara
class FlightBrokenProducts {
  String? productId;
  String? crewId;
  String? note;
  String? picture;

  FlightBrokenProducts({this.productId, this.crewId, this.note, this.picture});

  FlightBrokenProducts.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    crewId = json['crewId'];
    note = json['note'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productId'] = productId;
    data['crewId'] = crewId;
    data['note'] = note;
    data['picture'] = picture;
    return data;
  }
}

class FligtCabinSupervisors {
  String? id;
  int? cabinPrim;
  FligtCabinSupervisors({this.id, this.cabinPrim});

  FligtCabinSupervisors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cabinPrim = json['cabinPrim'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cabinPrim'] = cabinPrim;

    return data;
  }
}

class FlightRoots {
  String? rootNo;
  bool? isDone;
  String? id;
  int? sequenceNo;
  String? code1;
  String? code2;
  List<FlightPayments>? flightPayments;
  List<FlightSalesDetails>? flightSalesDetails;
  List<FligtCabinSupervisors>? fligtCabinSupervisors;
  List<FlightBrokenProducts>? flightBrokenProducts;
  List<CrewNote>? crewNotes;
  List<JackPot>? jackPots;
  List<FlightRefundPayments>? flightRefundPayments;
  int? passengerCount;

  FlightRoots(
      {this.rootNo,
      this.isDone,
      this.sequenceNo,
      this.code1,
      this.code2,
      this.flightPayments,
      this.flightSalesDetails,
      this.fligtCabinSupervisors,
      this.id,
      this.flightBrokenProducts,
      this.crewNotes,
      this.jackPots,
      this.flightRefundPayments,
      this.passengerCount});

  FlightRoots.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isDone = json['isDone'];
    rootNo = json['rootNo'];
    sequenceNo = json['sequenceNo'];
    code1 = json['code1'];
    code2 = json['code2'];
    passengerCount = json['passengerCount'];
    if (json['flightPayments'] != null) {
      flightPayments = <FlightPayments>[];
      json['flightPayments'].forEach((v) {
        flightPayments!
            .add(FlightPayments.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['flightSalesDetails'] != null) {
      flightSalesDetails = <FlightSalesDetails>[];
      json['flightSalesDetails'].forEach((v) {
        flightSalesDetails!
            .add(FlightSalesDetails.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['fligtCabinSupervisors'] != null) {
      fligtCabinSupervisors = <FligtCabinSupervisors>[];
      json['fligtCabinSupervisors'].forEach((v) {
        fligtCabinSupervisors!
            .add(FligtCabinSupervisors.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['flightBrokenProducts'] != null) {
      flightBrokenProducts = <FlightBrokenProducts>[];
      json['flightBrokenProducts'].forEach((v) {
        flightBrokenProducts!
            .add(FlightBrokenProducts.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['crewNotes'] != null) {
      crewNotes = <CrewNote>[];
      json['crewNotes'].forEach((v) {
        crewNotes!.add(CrewNote.fromJson(Map<String, dynamic>.from(v)));
      });
    }
    if (json['jackPots'] != null) {
      jackPots = <JackPot>[];
      json['jackPots'].forEach((v) {
        jackPots!.add(JackPot.fromJson(Map<String, dynamic>.from(v)));
      });
    }

    if (json['flightRefundPayments'] != null) {
      flightRefundPayments = <FlightRefundPayments>[];
      json['flightRefundPayments'].forEach((v) {
        flightRefundPayments!
            .add(FlightRefundPayments.fromJson(Map<String, dynamic>.from(v)));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rootNo'] = rootNo;
    data['isDone'] = isDone;
    data['id'] = id;
    data['sequenceNo'] = sequenceNo;
    data['code1'] = code1;
    data['code2'] = code2;
    data['passengerCount'] = passengerCount;
    if (flightPayments != null) {
      data['flightPayments'] = flightPayments!.map((v) => v.toJson()).toList();
    }
    if (flightSalesDetails != null) {
      data['flightSalesDetails'] =
          flightSalesDetails!.map((v) => v.toJson()).toList();
    }
    if (fligtCabinSupervisors != null) {
      data['fligtCabinSupervisors'] =
          fligtCabinSupervisors!.map((v) => v.toJson()).toList();
    }
    if (crewNotes != null) {
      data['crewNotes'] = crewNotes!.map((v) => v.toJson()).toList();
    }

    if (flightBrokenProducts != null) {
      data['flightBrokenProducts'] =
          flightBrokenProducts!.map((v) => v.toJson()).toList();
    }
    if (jackPots != null) {
      data['jackPots'] = jackPots!.map((v) => v.toJson()).toList();
    }

    if (flightRefundPayments != null) {
      data['flightRefundPayments'] =
          flightRefundPayments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FlightRefundPayments {
  String? seat;
  String? exchangeName;
  double? amount;
  double? pSatis;
  double? eurAmount;

  FlightRefundPayments(
      {this.seat, this.exchangeName, this.amount, this.pSatis, this.eurAmount});

  FlightRefundPayments.fromJson(Map<String, dynamic> json) {
    seat = json['seat'];
    exchangeName = json['exchangeName'];
    amount = json['amount'];
    pSatis = json['pSatis'];
    eurAmount = json['eurAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['seat'] = seat;
    data['exchangeName'] = exchangeName;
    data['amount'] = amount;
    data['pSatis'] = pSatis;
    data['eurAmount'] = eurAmount;
    return data;
  }
}

class ShortLists {
  String? barcode;
  String? name;
  int? lineNo;
  double? price;
  int? qty;
  int? qtySales;
  int? qtyFree;
  int? qtyPreOrder;

  ShortLists(
      {this.barcode,
      this.name,
      this.lineNo,
      this.price,
      this.qty,
      this.qtySales,
      this.qtyPreOrder,
      this.qtyFree});

  ShortLists.fromJson(Map<String, dynamic> json) {
    barcode = json['barcode'];
    name = json['name'];
    lineNo = json['lineNo'];
    price = json['price'];
    qty = json['qty'];
    qtySales = json['qtySales'];
    qtyFree = json['qtyFree'];
    qtyPreOrder = json['qtyPreOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['barcode'] = barcode;
    data['name'] = name;
    data['lineNo'] = lineNo;
    data['price'] = price;
    data['qty'] = qty;
    data['qtySales'] = qtySales;
    data['qtyFree'] = qtyFree;
    data['qtyPreOrder'] = qtyPreOrder;
    return data;
  }
}

class BlackLists {
  String? cardNo;
  String? transactionDate;

  BlackLists({this.cardNo, this.transactionDate});

  BlackLists.fromJson(Map<String, dynamic> json) {
    cardNo = json['cardNo'];
    transactionDate = json['transactionDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cardNo'] = cardNo;
    data['transactionDate'] = transactionDate;
    return data;
  }
}
