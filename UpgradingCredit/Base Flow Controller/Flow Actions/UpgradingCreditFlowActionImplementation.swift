//
//  UpgradingCreditFlowActionImplementation.swift
//  UpgradingCredit
//
//  Created by Manyuchi, Carrington C on 2024/12/12.
//

import Foundation
import UIKit

public class UpgradingCreditFlowActionImplementation: NSObject, UpgradingCreditFlowAction {
    
    private let navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    public func startUpgradingCreditFlow(with dataTransporter: UpgradingCreditDataTransporter) {
        let salaryAssessmentViewController = UpgradingCreditSalaryAssessmentViewController()
        salaryAssessmentViewController.upgradingCreditDataTransporter = dataTransporter
        navigationController?.pushViewController(salaryAssessmentViewController, animated: true)
    }

    public func navigateToAgreementScreen(with dataTransporter: UpgradingCreditDataTransporter) {
        let agreementViewController = UpgradingCreditAgreementViewController()
        agreementViewController.upgradingCreditDataTransporter = dataTransporter
        navigationController?.pushViewController(agreementViewController, animated: true)
    }
    
    public func navigateToSalaryAssessmentScreen(with dataTransporter: UpgradingCreditDataTransporter) {
        let salaryAssessmentViewController = UpgradingCreditSalaryAssessmentViewController()
        salaryAssessmentViewController.upgradingCreditDataTransporter = dataTransporter
        navigationController?.pushViewController(salaryAssessmentViewController, animated: true)
    }
    
    public func navigateToSalaryConfirmationScreen(with dataTransporter: UpgradingCreditDataTransporter) {
        let storyboard = UIStoryboard(name: "UpgradingCreditSalaryConfirmationViewController", bundle: nil) // Replace "Main" with your storyboard name
        if let salaryConfirmationViewController = storyboard.instantiateViewController(withIdentifier: "UpgradingCreditSalaryConfirmationViewController") as? UpgradingCreditSalaryConfirmationViewController {
            salaryConfirmationViewController.upgradingCreditDataTransporter = dataTransporter
            navigationController?.pushViewController(salaryConfirmationViewController, animated: true)
        } else {
            print("Could not instantiate UpgradingCreditSalaryConfirmationViewController")
        }
    }
    
    public func navigateToTailoredDealScreen(with dataTransporter: UpgradingCreditDataTransporter) {
        let tailoredDealViewController = UpgradingCreditTailoredDealViewController()
        tailoredDealViewController.upgradingCreditDataTransporter = dataTransporter
        navigationController?.pushViewController(tailoredDealViewController, animated: true)
    }
    
    public func navigateToTransactionSummaryScreen(with dataTransporter: UpgradingCreditDataTransporter) {
        let transactionSummaryViewController = UpgradingCreditTransactionSummaryViewController()
        transactionSummaryViewController.upgradingCreditDataTransporter = dataTransporter
        navigationController?.pushViewController(transactionSummaryViewController, animated: true)
    }
    
    public func endUpgradingCreditFlow() {
        let initialViewController = UpgradingCreditSalaryAssessmentViewController()
        navigationController?.setViewControllers([initialViewController], animated: true)
    }
    
}
