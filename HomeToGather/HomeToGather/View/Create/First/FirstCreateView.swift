//
//  FirstCreateView.swift
//  HomeToGather
//
//  Created by JungHoonPark on 2022/06/13.
//

import SwiftUI

struct FirstCreateView: View {
    @StateObject var partyData = PartyData()
    @State private var isDisabled = false
    
    init(){
        UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView {
                VStack{
                    FirstInfo()
                        .environmentObject(partyData)
                }
            }
        }
        .navigationBarTitle("초대장 만들기", displayMode: .inline)
        .foregroundColor(.white)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: {
                    SecondCreateView()
                        .environmentObject(partyData)
                }, label: {
                    Text("다음")
                        .foregroundColor(isDisabled ? .gray : .white)
                }).disabled(isDisabled)
            }
        }
    }
}



