//
//  UpgradingCreditSalaryConfirmationView.swift
//  UpgradingCredit
//
//  Created by Manyuchi, Carrington C on 2024/12/12.
//

import Foundation


protocol UpgradingCreditSalaryConfirmationView: AnyObject {
    func showLoadingIndicator()
    func hideLoadingIndicator()
    
    func updateBankConfirmedIncome(_ value: String)
    func updateNewStatedIncome(_ value: String)
    func updateTotalExpense(_ value: String)
}
