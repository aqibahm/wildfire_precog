//
//  ContentView.swift
//  GuidedCapture
//
//  Created by Aqib's Workplace on 12/4/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct LandingPageView: View {
    /// This functions as the home screen. Add a button that navigates the user to the guided capture view.
    var body: some View {
        NavigationStack {
            ///
            List {
                NavigationLink("Mint", value: Color.mint)
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Teal", value: Color.teal)
            }
            .navigationDestination(for: Color.self) { color in
                VStack{
                    Text("Example Page")
                }
            }
            .navigationTitle("Colors")
        }
    }
}

#Preview {
    ContentView()
}
