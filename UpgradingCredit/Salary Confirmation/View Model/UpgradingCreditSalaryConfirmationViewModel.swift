//
//  UpgradingCreditSalaryConfirmationViewModel.swift
//  UpgradingCredit
//
//  Created by Manyuchi, Carrington C on 2024/12/12.
//

import Foundation


public class UpgradingCreditSalaryConfirmationViewModel {
    
    private  var upgradingCreditDataTransporter: UpgradingCreditDataTransporter?
    private weak var view: UpgradingCreditSalaryConfirmationView?
    private var flowAction: UpgradingCreditFlowAction?
    
    init(dataTransporter: UpgradingCreditDataTransporter, view: UpgradingCreditSalaryConfirmationView, flowAction: UpgradingCreditFlowAction) {
        self.upgradingCreditDataTransporter = dataTransporter
        self.view = view
        self.flowAction = flowAction
    }
    
    func viewDidLoad() {
        if let grossIncome = self.upgradingCreditDataTransporter?.bankConfirmedGrossIncome {
            self.view?.updateBankConfirmedIncome(grossIncome)
        }
        
        if let declaredIncome = self.upgradingCreditDataTransporter?.enteredGrossMonthlyIncome {
            self.view?.updateNewStatedIncome(declaredIncome)
        } else {
            print("0.00")
        }
        
        if let declaredExpenses = self.upgradingCreditDataTransporter?.enteredMonthlyExpense {
            self.view?.updateTotalExpense(declaredExpenses)
        } else {
            print(0.00)
        }
    }
    
    
    func nextButtonTapped() {
        
    }
    
    
}
