//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by VG on 31.05.2022.
//

import SwiftUI

@main
struct StateAndDataFlow: App {
    private let user = DataManager.shared.loadUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
 
