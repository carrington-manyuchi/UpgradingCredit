//
//  UpgradingCreditFlowAction.swift
//  UpgradingCredit
//
//  Created by Manyuchi, Carrington C on 2024/12/12.
//

import Foundation

public protocol UpgradingCreditFlowAction: AnyObject {
    func startUpgradingCreditFlow(with dataTransporter: UpgradingCreditDataTransporter)
    func navigateToAgreementScreen(with dataTransporter: UpgradingCreditDataTransporter)
    func navigateToSalaryAssessmentScreen(with dataTransporter: UpgradingCreditDataTransporter)
    func navigateToSalaryConfirmationScreen(with dataTransporter: UpgradingCreditDataTransporter)
    func navigateToTailoredDealScreen(with dataTransporter: UpgradingCreditDataTransporter)
    func navigateToTransactionSummaryScreen(with dataTransporter: UpgradingCreditDataTransporter)
    
    func endUpgradingCreditFlow()
}
