//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by John Doe on 14/09/2022.
//

import SwiftUI

class User: ObservableObject{
    @Published var firstName = "Ivan"
    @Published var lastName = "Kolzov"
}

struct ShowDetailView {
    
    var body: some View {
        Text("New screen")
    }
}

struct ContentView: View {
    
    @ObservedObject private var user = User()
    @ObservedObject private var settings = UserSettings()
    @State private var showingDetail = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("User name is \(user.firstName), \(user.lastName)")
            Text("your scoare is \(settings.score)")
            Button {
                settings.score += 1
                ShowLicenseAgreement()
            } label: {
                Text("Increase score")
            }

            TextField("Enter name", text: $user.firstName)
            TextField("enter last name", text: $user.lastName)
            
//            Button {
//                showingDetail.toggle()
//            } label: {
//                Text("New screen")
//            } .sheet(isPresented: $showingDetail) {
//                ShowDetailView()
//            }


        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
