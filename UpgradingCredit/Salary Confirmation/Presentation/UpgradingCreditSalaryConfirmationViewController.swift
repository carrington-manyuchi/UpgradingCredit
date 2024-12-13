//
//  UpgradingCreditSalaryConfirmationViewController.swift
//  UpgradingCredit
//
//  Created by Manyuchi, Carrington C on 2024/12/12.
//

import UIKit

class UpgradingCreditSalaryConfirmationViewController: BaseUpgradingCreditViewController {
        
    @IBOutlet private weak var bankApprovedIncomeLabel: UILabel! {
        didSet {
            bankApprovedIncomeLabel.textColor = .black
            bankApprovedIncomeLabel.font = .systemFont(ofSize: 14, weight: .regular)
            bankApprovedIncomeLabel.text = ""
        }
    }
    
    @IBOutlet private weak var recentlyDeclaredIncomeLabel: UILabel! {
        didSet {
            recentlyDeclaredIncomeLabel.textColor = .black
            recentlyDeclaredIncomeLabel.font = .systemFont(ofSize: 16, weight: .regular)
            recentlyDeclaredIncomeLabel.text = ""
        }
    }
    
    private lazy var viewModel = UpgradingCreditSalaryConfirmationViewModel(
        dataTransporter: self.upgradingCreditDataTransporter ?? UpgradingCreditDataTransporter(), view: self,
        flowAction: UpgradingCreditFlowActionImplementation(navigationController: self.navigationController)
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.viewDidLoad()
        
    
    }


}


extension UpgradingCreditSalaryConfirmationViewController: UpgradingCreditSalaryConfirmationView {
    func updateTotalExpense(_ value: String) {
        bankApprovedIncomeLabel.text = value
    }
        
    func updateBankConfirmedIncome(_ value: String) {
       // bankApprovedIncomeLabel.text = value
    }
    
    func updateNewStatedIncome(_ value: String) {
        recentlyDeclaredIncomeLabel.text = value
    }
    
    func showLoadingIndicator() {
        
    }
    
    func hideLoadingIndicator() {
        
    }
    
}
