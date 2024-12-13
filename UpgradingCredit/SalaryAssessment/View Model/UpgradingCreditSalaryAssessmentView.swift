//
//  UpgradingCreditSalaryAssessmentView.swift
//  UpgradingCredit
//
//  Created by Manyuchi, Carrington C on 2024/12/12.
//

import UIKit

protocol UpgradingCreditSalaryAssessmentView: AnyObject {
    func showLoadingIndicator()
    func hideLoadingIndicator()
    
    func updateGrossMonthlyIncomeTextField(_ amount: String)
    func updateTotalMonthlyExpensesTextField(_ amount: String)
}

protocol SalaryAssessmentDelegate: UITextFieldDelegate {
    func didEnterAmount(amount: String, tag: Int)
}
