//
//  HomeHeader.swift
//  MasterPhoto
//
//  Created by macbook on 10/12/2023.
//
import SwiftUI


struct HomeHeader: View {
    var body: some View {
        HStack {
            Image("Logo")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height: 22)
            Spacer()
            Image("icCamera")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height: 22)
        }.padding(16)
    }
}
