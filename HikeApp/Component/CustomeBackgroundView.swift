//
//  CustomeBackgroundView.swift
//  HikeApp
//
//  Created by Noel Velasco on 8/26/23.
//

import SwiftUI

struct CustomeBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 3. Depth
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            //MARK: - 2. Light
            
            Color("ColorGreenLight")
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            //MARK: - 1 Surface
            
            LinearGradient(
                colors: [
                    Color.customGreenLight,
                    Color.customGreenMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

struct CustomeBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomeBackgroundView()
            .padding()
    }
}
