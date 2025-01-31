//
//  RewardAdView.swift
//  AdMob
//
//  Created by Ganesh on 09/09/23.
//



import SwiftUI

struct RewardAdView: View {
    
    // Properties
    @StateObject private var rewardManager = RewardAdsManager()
    
    
    // Body
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            VStack{
                
                Image("admob")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                
                Spacer()
                
                Button {
                    rewardManager.displayReward()
                } label: {
                    Text("Show Reward")
                        .font(.headline)
                        .foregroundColor(.green)
                        .fontWeight(.bold)

                }
                Spacer()
            }
        }
        .onAppear{
            rewardManager.loadReward()
        }
        .disabled(!rewardManager.rewardLoaded)
    }
}

struct RewardAdView_Previews: PreviewProvider {
    static var previews: some View {
        RewardAdView()
    }
}
