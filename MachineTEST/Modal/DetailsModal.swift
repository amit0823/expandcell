//
//  DetailsModal.swift
//  MachineTEST
//
//  Created by Brainwork Technologies on 18/08/2020.
//  Copyright © 2020 Advatix Inc. All rights reserved.
//

import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let detailsResponse = try? newJSONDecoder().decode(DetailsResponse.self, from: jsonData)

import Foundation

// MARK: - DetailsResponse
struct DetailsResponse: Codable {
    let d: Response?
}

// MARK: - D
struct Response: Codable {
    let metadata: DMetadata
    let soNo, loginID, orderType, orderTypeDesc: String
    let orderDate, entryTime, customerNo, customerName: String
    let customerPO: String
    let customerPODate: JSONNull?
    let shippingTypeID, shippingTypeDesc, meansOfTranstyp, meansOfTranstypDesc: String
    let shipToParty, shipToPartyName, address1, address2: String
    let address3, address4, district, postalCode: String
    let city, state, stateDesc, countryCode: String
    let countryCodeDesc, salesArea, salesAreaDesc, salesOffice: String
    let saleOffDesc, salesGroup, saleGrpDesc, plant: String
    let plantDesc, incoterm1, incoterm1Desc, incoterm2: String
    let payterm, paytermDesc, currency, netPrice: String
    let totalAmount, taxAmount, altTaxClass, altTaxClassDesc: String
    let freight, discount, status, statusDesc: String
    let delvStatus, delvStatusDesc, unloadingPoint, receivingPoint: String
    let testrun, refDocNo, refDocCat, salesDist: String
    let salesDistDesc, route, routeDesc, splProcessing: String
    let splProcessingDs, priceList, priceListDesc, tax1Amount: String
    let tax2Amount, tax3Amount, tax4Amount, tax1Percent: String
    let tax2Percent, tax3Percent, tax4Percent, mrp: String
    let referenceNo, outstanding, netWeight, netWeightUom: String
    let totalQuantity, quantityUom, advanceAmount, paymentStatus: String
    let paymentStatusDesc: String
    let soItemDetails: SOItemDetails2
    let soTexts, soConditions: SOConditionsClass2
    let soPartnerFunctions: SOPartnerFunctionsClass2

    enum CodingKeys: String, CodingKey {
        case metadata = "__metadata"
        case soNo = "SONo"
        case loginID = "LoginID"
        case orderType = "OrderType"
        case orderTypeDesc = "OrderTypeDesc"
        case orderDate = "OrderDate"
        case entryTime = "EntryTime"
        case customerNo = "CustomerNo"
        case customerName = "CustomerName"
        case customerPO = "CustomerPO"
        case customerPODate = "CustomerPODate"
        case shippingTypeID = "ShippingTypeID"
        case shippingTypeDesc = "ShippingTypeDesc"
        case meansOfTranstyp = "MeansOfTranstyp"
        case meansOfTranstypDesc = "MeansOfTranstypDesc"
        case shipToParty = "ShipToParty"
        case shipToPartyName = "ShipToPartyName"
        case address1 = "Address1"
        case address2 = "Address2"
        case address3 = "Address3"
        case address4 = "Address4"
        case district = "District"
        case postalCode = "PostalCode"
        case city = "City"
        case state = "State"
        case stateDesc = "StateDesc"
        case countryCode = "CountryCode"
        case countryCodeDesc = "CountryCodeDesc"
        case salesArea = "SalesArea"
        case salesAreaDesc = "SalesAreaDesc"
        case salesOffice = "SalesOffice"
        case saleOffDesc = "SaleOffDesc"
        case salesGroup = "SalesGroup"
        case saleGrpDesc = "SaleGrpDesc"
        case plant = "Plant"
        case plantDesc = "PlantDesc"
        case incoterm1 = "Incoterm1"
        case incoterm1Desc = "Incoterm1Desc"
        case incoterm2 = "Incoterm2"
        case payterm = "Payterm"
        case paytermDesc = "PaytermDesc"
        case currency = "Currency"
        case netPrice = "NetPrice"
        case totalAmount = "TotalAmount"
        case taxAmount = "TaxAmount"
        case altTaxClass = "AltTaxClass"
        case altTaxClassDesc = "AltTaxClassDesc"
        case freight = "Freight"
        case discount = "Discount"
        case status = "Status"
        case statusDesc = "StatusDesc"
        case delvStatus = "DelvStatus"
        case delvStatusDesc = "DelvStatusDesc"
        case unloadingPoint = "UnloadingPoint"
        case receivingPoint = "ReceivingPoint"
        case testrun = "Testrun"
        case refDocNo = "RefDocNo"
        case refDocCat = "RefDocCat"
        case salesDist = "SalesDist"
        case salesDistDesc = "SalesDistDesc"
        case route = "Route"
        case routeDesc = "RouteDesc"
        case splProcessing = "SplProcessing"
        case splProcessingDs = "SplProcessingDs"
        case priceList = "PriceList"
        case priceListDesc = "PriceListDesc"
        case tax1Amount = "Tax1Amount"
        case tax2Amount = "Tax2Amount"
        case tax3Amount = "Tax3Amount"
        case tax4Amount = "Tax4Amount"
        case tax1Percent = "Tax1Percent"
        case tax2Percent = "Tax2Percent"
        case tax3Percent = "Tax3Percent"
        case tax4Percent = "Tax4Percent"
        case mrp = "Mrp"
        case referenceNo = "ReferenceNo"
        case outstanding = "Outstanding"
        case netWeight = "NetWeight"
        case netWeightUom = "NetWeightUom"
        case totalQuantity = "TotalQuantity"
        case quantityUom = "QuantityUom"
        case advanceAmount = "AdvanceAmount"
        case paymentStatus = "PaymentStatus"
        case paymentStatusDesc = "PaymentStatusDesc"
        case soItemDetails = "SOItemDetails"
        case soTexts = "SOTexts"
        case soConditions = "SOConditions"
        case soPartnerFunctions = "SOPartnerFunctions"
    }
}

// MARK: - DMetadata
struct DMetadata: Codable {
    let id, uri: String
    let type: String
}

// MARK: - SOConditionsClass
struct SOConditionsClass2: Codable {
    let results: [SOConditionsResult2]
}

// MARK: - SOConditionsResult
struct SOConditionsResult2: Codable {
    let metadata: DMetadata
    let soNo, conditionTypeID, conditionCounter, conditionDocNo: String
    let name, loginID, customerNo, customerName: String
    let conditionTypeDesc, conditionCatID, conditionCatDesc, conditionPricingDate: String
    let conditionAmount, conditionAmtPer, conditionAmtPerUOM, conditionBaseValue: String
    let conditionValue, calculationTypeID, calculationTypeDesc, currency: String
    let condUIFieldStatusID, condUIFieldStatusDesc, statusID, statusDesc: String
    let condCurrency, sequenceNo: String
    let soConditionItemDetail: SOPartnerFunctionsClass2

    enum CodingKeys: String, CodingKey {
        case metadata = "__metadata"
        case soNo = "SONo"
        case conditionTypeID = "ConditionTypeID"
        case conditionCounter = "ConditionCounter"
        case conditionDocNo = "ConditionDocNo"
        case name = "Name"
        case loginID = "LoginID"
        case customerNo = "CustomerNo"
        case customerName = "CustomerName"
        case conditionTypeDesc = "ConditionTypeDesc"
        case conditionCatID = "ConditionCatID"
        case conditionCatDesc = "ConditionCatDesc"
        case conditionPricingDate = "ConditionPricingDate"
        case conditionAmount = "ConditionAmount"
        case conditionAmtPer = "ConditionAmtPer"
        case conditionAmtPerUOM = "ConditionAmtPerUOM"
        case conditionBaseValue = "ConditionBaseValue"
        case conditionValue = "ConditionValue"
        case calculationTypeID = "CalculationTypeID"
        case calculationTypeDesc = "CalculationTypeDesc"
        case currency = "Currency"
        case condUIFieldStatusID = "CondUIFieldStatusID"
        case condUIFieldStatusDesc = "CondUIFieldStatusDesc"
        case statusID = "StatusID"
        case statusDesc = "StatusDesc"
        case condCurrency = "CondCurrency"
        case sequenceNo = "SequenceNo"
        case soConditionItemDetail = "SOConditionItemDetail"
    }
}

// MARK: - SOPartnerFunctionsClass
struct SOPartnerFunctionsClass2: Codable {
    let deferred: Deferred

    enum CodingKeys: String, CodingKey {
        case deferred = "__deferred"
    }
}

// MARK: - Deferred
struct Deferred2: Codable {
    let uri: String
}

// MARK: - SOItemDetails
struct SOItemDetails2: Codable {
    let results: [SOItemDetailsResult2]
}

// MARK: - SOItemDetailsResult
struct SOItemDetailsResult2: Codable {
    let metadata: PurpleMetadata
    let alternateWeight, alternateWeightUOM, soNo, itemNo: String
    let loginID, material, materialDesc, materialGroup: String
    let matGroupDesc, itemCategory, itemCatDesc, plant: String
    let plantDesc, storLOC, storLOCDesc, uom: String
    let quantity, delvQty, openQty, currency: String
    let unitPrice, soPriceUnit, soPriceUnitUom, netAmount: String
    let grossAmount, tax, freight, discount: String
    let discountPer, batch, hasBatchMgmt: String
    let manufacturingDate, expiryDate: JSONNull?
    let mrp, rejReason, rejReasonDesc, statusID: String
    let statusDesc, delvStatusID, delvStatusDesc, depotStock: String
    let ownStock, refDocNo, refDocItem, refDocCat: String
    let salesDist, salesDistDesc, route, routeDesc: String
    let matFrgtGrp, matFrgtGrpDs, splProcessing, splProcessingDs: String
    let priceList, priceListDesc, highLevellItemNo, quotationQty: String
    let quotationOpenQty, quotationNo, tax1Amount, tax2Amount: String
    let tax3Amount, tax4Amount, tax1Percent, tax2Percent: String
    let tax3Percent, tax4Percent: String
    let soTexts, soItemSchedules, soConditionItemDetails, soPartnerFunctionItemDetails: SOPartnerFunctionsClass2

    enum CodingKeys: String, CodingKey {
        case metadata = "__metadata"
        case alternateWeight = "AlternateWeight"
        case alternateWeightUOM = "AlternateWeightUOM"
        case soNo = "SONo"
        case itemNo = "ItemNo"
        case loginID = "LoginID"
        case material = "Material"
        case materialDesc = "MaterialDesc"
        case materialGroup = "MaterialGroup"
        case matGroupDesc = "MatGroupDesc"
        case itemCategory = "ItemCategory"
        case itemCatDesc = "ItemCatDesc"
        case plant = "Plant"
        case plantDesc = "PlantDesc"
        case storLOC = "StorLoc"
        case storLOCDesc = "StorLocDesc"
        case uom = "UOM"
        case quantity = "Quantity"
        case delvQty = "DelvQty"
        case openQty = "OpenQty"
        case currency = "Currency"
        case unitPrice = "UnitPrice"
        case soPriceUnit = "SOPriceUnit"
        case soPriceUnitUom = "SOPriceUnitUom"
        case netAmount = "NetAmount"
        case grossAmount = "GrossAmount"
        case tax = "Tax"
        case freight = "Freight"
        case discount = "Discount"
        case discountPer = "DiscountPer"
        case batch = "Batch"
        case hasBatchMgmt = "HasBatchMgmt"
        case manufacturingDate = "ManufacturingDate"
        case expiryDate = "ExpiryDate"
        case mrp = "MRP"
        case rejReason = "RejReason"
        case rejReasonDesc = "RejReasonDesc"
        case statusID = "StatusID"
        case statusDesc = "StatusDesc"
        case delvStatusID = "DelvStatusID"
        case delvStatusDesc = "DelvStatusDesc"
        case depotStock = "DepotStock"
        case ownStock = "OwnStock"
        case refDocNo = "RefDocNo"
        case refDocItem = "RefDocItem"
        case refDocCat = "RefDocCat"
        case salesDist = "SalesDist"
        case salesDistDesc = "SalesDistDesc"
        case route = "Route"
        case routeDesc = "RouteDesc"
        case matFrgtGrp = "MatFrgtGrp"
        case matFrgtGrpDs = "MatFrgtGrpDs"
        case splProcessing = "SplProcessing"
        case splProcessingDs = "SplProcessingDs"
        case priceList = "PriceList"
        case priceListDesc = "PriceListDesc"
        case highLevellItemNo = "HighLevellItemNo"
        case quotationQty = "QuotationQty"
        case quotationOpenQty = "QuotationOpenQty"
        case quotationNo = "QuotationNo"
        case tax1Amount = "Tax1Amount"
        case tax2Amount = "Tax2Amount"
        case tax3Amount = "Tax3Amount"
        case tax4Amount = "Tax4Amount"
        case tax1Percent = "Tax1Percent"
        case tax2Percent = "Tax2Percent"
        case tax3Percent = "Tax3Percent"
        case tax4Percent = "Tax4Percent"
        case soTexts = "SOTexts"
        case soItemSchedules = "SOItemSchedules"
        case soConditionItemDetails = "SOConditionItemDetails"
        case soPartnerFunctionItemDetails = "SOPartnerFunctionItemDetails"
    }
}

// MARK: - PurpleMetadata
struct PurpleMetadata: Codable {
    let id, uri: String
    let type, contentType: String
    let mediaSrc, editMedia: String

    enum CodingKeys: String, CodingKey {
        case id, uri, type
        case contentType = "content_type"
        case mediaSrc = "media_src"
        case editMedia = "edit_media"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
