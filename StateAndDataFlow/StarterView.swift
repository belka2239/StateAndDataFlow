//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by VG on 02.06.2022.
//

import SwiftUI

struct StarterView: View {

    @EnvironmentObject private var userManager: UserManager

    var body: some View {
        Group {
            if userManager.user.isRegistered {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
