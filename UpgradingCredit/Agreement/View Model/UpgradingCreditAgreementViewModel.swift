//
//  UpgradingCreditAgreementViewModel.swift
//  UpgradingCredit
//
//  Created by Manyuchi, Carrington C on 2024/12/12.
//

import Foundation


class UpgradingCreditAgreementViewModel {
    private weak var view: UpgradingCreditAgreementView?
    private var upgradingCreditDataTransporter: UpgradingCreditDataTransporter?
    private var flowAction: UpgradingCreditFlowAction?
    
    init(view: UpgradingCreditAgreementView, upgradingCreditDataTransporter: UpgradingCreditDataTransporter, flowAction: UpgradingCreditFlowAction) {
        self.view = view
        self.upgradingCreditDataTransporter = upgradingCreditDataTransporter
        self.flowAction = flowAction
    }
    

}
