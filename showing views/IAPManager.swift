//
//  IAPManager.swift
//  STAR WARS CARDS
//
//  Created by Nicholas Ramcharitar on 26/11/2017.
//  Copyright © 2017 Nicholas. All rights reserved.
//

import UIKit
import StoreKit

class IAPManager: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
  
  // MARK: Properties
  internal var productsRequest: SKProductsRequest? = SKProductsRequest()
  internal var productIdentifiers = [String]()
  internal var purchasedProducts = [String]()
  internal var completionHandler: ((Bool) -> Void)? = { (success) in }
  
  // MARK: Initialization
  internal convenience init(_ identifiers: [String]) {
    self.init()
    self.productIdentifiers = identifiers
    
    for id in self.productIdentifiers {
      let isPurchased = UserDefaults.standard.bool(forKey: id)
      if isPurchased {
        self.purchasedProducts.append(id)
      }
    }
    SKPaymentQueue.default().add(self)
  }
  
  // MARK: Product Request
  public func requestProducts(completion: @escaping (_ success: Bool) -> Void) {
    completionHandler = completion
    productsRequest = SKProductsRequest(productIdentifiers: Set(productIdentifiers))
    productsRequest?.delegate = self
    productsRequest?.start()
    print("requesting products")
  }
  
  // MARK: SKProductsRequestDelegate
  internal func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
    productsRequest = nil
    buyProduct(response.products[0])
    print("request received response")
  }
  
  internal func request(_ request: SKRequest, didFailWithError error: Error) {
    productsRequest = nil
    completionHandler!(false)
    completionHandler = nil
    print("request failed")
  }
  
  internal func productPurchased(identifier: String) -> Bool {
    return purchasedProducts.contains(identifier)
  }
  
  internal func buyProduct(_ product: SKProduct) {
    let payment = SKPayment(product: product)
    SKPaymentQueue.default().add(payment)
    print("buy product")
  }
  
  internal func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
    print("updated transaction state")
    for transaction in transactions {
      switch transaction.transactionState {
      case .purchased:
        completeTransaction(transaction)
      case .restored:
        restoreTransaction(transaction)
      case .failed:
        failedTransaction(transaction)
      default:
        break
      }
    }
  }
  
  internal func completeTransaction(_ transaction: SKPaymentTransaction) {
    provideContentForProductIdentifier(transaction.payment.productIdentifier)
    SKPaymentQueue.default().finishTransaction(transaction)
    completionHandler!(true)
    print("completed transaction")
  }
  
  internal func restoreTransaction(_ transaction: SKPaymentTransaction) {
    provideContentForProductIdentifier(transaction.original!.payment.productIdentifier)
    SKPaymentQueue.default().finishTransaction(transaction)
    completionHandler!(true)
    print("restored transaction")
  }
  
  internal func failedTransaction(_ transaction: SKPaymentTransaction) {
    SKPaymentQueue.default().finishTransaction(transaction)
    completionHandler!(false)
    print("failed transaction")
  }
  
  internal func provideContentForProductIdentifier(_ identifier: String) {
    purchasedProducts.append(identifier)
    print("providing content for identifier")
  }
  
  public func restoreCompletedTransactions() {
    SKPaymentQueue.default().add(self)
    SKPaymentQueue.default().restoreCompletedTransactions()
    print("restoring all transaction")
  }
  
  internal func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue) {
    print("purchases restored")
  }
  
  internal func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error) {
    print("failed to restore transactions")
  }
  
  internal override init() {
    
  }
}
