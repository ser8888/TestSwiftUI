//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by John Doe on 14/09/2022.
//

import SwiftUI


struct DetailView {
    
    var body: some View {
        Text("New screen")
    }
}

struct ContentView: View {
  
    @State private var showingDetail = false
    
    var body: some View {
       
            
            Button(action: {
                showingDetail.toggle()
            }) {
                Text("Show License Agreement")
            }
            .sheet(isPresented: $showingDetail){
                VStack {
                    Text("License Agreement")
                        .font(.title)
                        .padding(50)
                    Text("""
                        Terms and conditions go here.
                    """)
                    .padding(50)
                    Button("Dismiss",
                           action: { showingDetail.toggle() })
                    
                }
            
        }
       
    }
}
func didDismiss() {
    // Handle the dismissing action.
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
