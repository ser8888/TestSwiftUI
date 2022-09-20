//
//  StartView.swift
//  TestSwiftUI
//
//  Created by John Doe on 19/09/2022.
//

import SwiftUI



struct StartView: View {
    
    @State private var FirstViewIsPesented =  false
    @State private var SecondViewIsPresented = false
    let index = 15
    
    var body: some View {
        Button ("Open the first modal screen") {
            FirstViewIsPesented.toggle()
        }
        .sheet(isPresented: $FirstViewIsPesented) {
            ContentView()
        }
        Button ("Open the second modal screen") {
            SecondViewIsPresented.toggle()
        }
        .sheet(isPresented: $SecondViewIsPresented) {
            SecondView(index: index)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
