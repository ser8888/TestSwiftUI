//
//  NewScreenView.swift
//  TestSwiftUI
//
//  Created by John Doe on 14/09/2022.
//

import SwiftUI

struct ShowLicenseAgreement: View {
    
    @State private var isShowingSheet = false
    
    var body: some View {
        Button(action: {
            isShowingSheet.toggle()
        }) {
            Text("Show License Agreement")
        }
        .sheet(isPresented: $isShowingSheet,
               onDismiss: didDismiss) {
            VStack {
                Text("License Agreement")
                    .font(.title)
                    .padding(50)
                Text("""
                        Terms and conditions go here.
                    """)
                    .padding(50)
                Button("Dismiss",
                       action: { isShowingSheet.toggle() })
            }
        }
    }

    func didDismiss() {
        // Handle the dismissing action.
    }
}

//
//struct NewScreenView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
struct ShowLicenseAgreement_Previews: PreviewProvider {
    static var previews: some View {
        ShowLicenseAgreement()
    }
}
