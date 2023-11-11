//
//  CustomListView.swift
//  HikeApp
//
//  Created by Noel Velasco on 8/26/23.
//

import SwiftUI

struct CustomListView: View {
    //MARK: Properties
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if rowLinkDestination == nil {
                Text(rowContent)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if rowLinkDestination != nil {
                Link(rowContent, destination: URL(string: rowLinkDestination!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomListView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListView(
                rowLabel: "Designer",
                rowIcon: "paintpalette",
                rowContent: "John Doe",
                rowTintColor: .pink,
                rowLinkDestination: "https://google.com")
        }
    }
}
