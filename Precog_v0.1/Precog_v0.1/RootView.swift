//
//  ContentView.swift
//  Precog_v0.1
//
//  Created by Aqib's Workplace on 11/16/23.
//

import SwiftUI

struct RootView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
        
        TabView {
            
            PhotoloadView()
                .badge(2)
                .padding(20)
                .tabItem {
                    Label("Lead", systemImage: "viewfinder.rectangular")
                }
            ContributorView()
                .tabItem {
                    Label("Contributor", systemImage: "qrcode")
                }
            NavigationView()
                .badge("!")
                .tabItem {
                    Label("Navigation", systemImage: "mappin.and.ellipse")
                }
            ArchiveView()
                .badge("!")
                .tabItem {
                    Label("Archive", systemImage: "archivebox")
                }
        }
        .padding()
        
    }
}

#Preview {
    RootView()
}
