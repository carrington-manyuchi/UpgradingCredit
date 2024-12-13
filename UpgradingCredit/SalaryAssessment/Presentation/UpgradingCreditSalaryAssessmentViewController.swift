//
//  SalaryAssessmentViewController.swift
//  UpgradingCredit
//
//  Created by Manyuchi, Carrington C on 2024/12/12.
//

import UIKit

class UpgradingCreditSalaryAssessmentViewController: BaseUpgradingCreditViewController{

    @IBOutlet private weak var grossMontlyIncomeTextField: UITextField! {
        didSet {
            grossMontlyIncomeTextField.tag = 1
            grossMontlyIncomeTextField.keyboardType = .numberPad
            grossMontlyIncomeTextField.delegate = self
        }
    }

    @IBOutlet private weak var totalExpensesTextField: UITextField! {
        didSet {
            totalExpensesTextField.tag = 2
            totalExpensesTextField.keyboardType = .numberPad
            totalExpensesTextField.delegate = self
        }
    }
    
    private lazy var viewModel = UpgradingCreditSalaryAssessmentViewModel(
        view: self,
        dataTransporter: upgradingCreditDataTransporter ?? UpgradingCreditDataTransporter(),
        flowAction: UpgradingCreditFlowActionImplementation(navigationController: self.navigationController)
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        title = "Carrington C Manyuchi"

    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        viewModel.nextButtonTapped()
        print("nextButtonTapped")
    }
    
}


// MARK: - UITextFieldDelegate methods
extension UpgradingCreditSalaryAssessmentViewController: SalaryAssessmentDelegate {
    
    func didEnterAmount(amount: String, tag: Int) {
        if tag == grossMontlyIncomeTextField.tag  {
            self.viewModel.grossMonthlyIcomeTextFieldChanged(amount)
        }
        else {
            if tag == totalExpensesTextField.tag {
                self.viewModel.totalMonthlyExpensesTextFieldChanged(amount)
            }
        }
    }

    @objc func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newAmount = textField.text ?? ""
        
        if let amountRange = Range(range, in: newAmount) {
            let updatedIncome = newAmount.replacingCharacters(in: amountRange, with: string)
            print("Updated amount: \(updatedIncome)")
            self.didEnterAmount(amount: updatedIncome, tag: textField.tag)
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension UpgradingCreditSalaryAssessmentViewController: UpgradingCreditSalaryAssessmentView {
    func showLoadingIndicator() {
        
    }
    
    func hideLoadingIndicator() {
        
    }
    
    func updateGrossMonthlyIncomeTextField(_ amount: String) {
        
    }
    
    func updateTotalMonthlyExpensesTextField(_ amount: String) {
        
    }
    
}
