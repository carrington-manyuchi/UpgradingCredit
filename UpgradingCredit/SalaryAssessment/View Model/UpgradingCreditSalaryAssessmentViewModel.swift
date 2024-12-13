//
//  UpgradingCreditSalaryAssessmentViewModel.swift
//  UpgradingCredit
//
//  Created by Manyuchi, Carrington C on 2024/12/12.
//

import UIKit

class UpgradingCreditSalaryAssessmentViewModel {
    private weak var view: UpgradingCreditSalaryAssessmentView?
    private var upgradingCreditDataTransporter: UpgradingCreditDataTransporter?
    private var flowAction: UpgradingCreditFlowAction?
    
    
    var enteredGrossMontlyIncome: String?
    var enteredMonthlyExpenses: String?
    
    init(view: UpgradingCreditSalaryAssessmentView, dataTransporter: UpgradingCreditDataTransporter?, flowAction: UpgradingCreditFlowAction) {
        self.view = view
        self.upgradingCreditDataTransporter = dataTransporter
        self.flowAction = flowAction
    }
    
    func viewDidLoad() {
        self.view?.updateGrossMonthlyIncomeTextField(self.enteredGrossMontlyIncome ?? "")
        self.view?.updateTotalMonthlyExpensesTextField(self.enteredMonthlyExpenses ?? "")
        
        self.upgradingCreditDataTransporter?.enteredGrossMonthlyIncome = self.enteredGrossMontlyIncome
    }
    
    func nextButtonTapped() {
        print("Gross Monthly Income: \(enteredGrossMontlyIncome ?? "N/A")")
        upgradingCreditDataTransporter?.enteredGrossMonthlyIncome = self.enteredGrossMontlyIncome
        upgradingCreditDataTransporter?.enteredMonthlyExpense = self.enteredMonthlyExpenses
        print("Total Monthly Expenses: \(enteredMonthlyExpenses ?? "N/A")")
        self.flowAction?.navigateToSalaryConfirmationScreen(with: upgradingCreditDataTransporter ?? UpgradingCreditDataTransporter())
    }
    
    func grossMonthlyIcomeTextFieldChanged(_ grossIncome: String) {
        self.enteredGrossMontlyIncome = grossIncome
    }
    
    func totalMonthlyExpensesTextFieldChanged(_ totalMonthlyIncome: String) {
        self.enteredMonthlyExpenses = totalMonthlyIncome
    }
    
}



