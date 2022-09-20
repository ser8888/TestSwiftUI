//
//  SecondView.swift
//  TestSwiftUI
//
//  Created by John Doe on 19/09/2022.
//

import SwiftUI

struct SecondView: View {
    var index : Int
    
    var body: some View {
        Text("The second screen")
            .bold()
            .font(.largeTitle)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(index: Int)
    }
}
