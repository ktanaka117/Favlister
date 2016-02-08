//
//  Login.swift
//  FavLister
//
//  Created by 田中賢治 on 2016/02/08.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import Foundation
import Social
import Accounts

public struct Login {
    public static func login() {
        if !SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) { return }
        
        let store = ACAccountStore()
        let type = store.accountTypeWithAccountTypeIdentifier(ACAccountTypeIdentifierTwitter)
        store.requestAccessToAccountsWithType(type, options: nil) { granted, error in
            if error != nil || !granted {
                print("error \(error)")
                return
            }
            
            let accounts = store.accountsWithAccountType(type)
            if let account = accounts.first as? ACAccount {
                Account.twitterAccount = account
            }
        }
    }
}