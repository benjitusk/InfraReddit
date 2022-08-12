//
//  SubmissionTileView.swift
//  infrareddit
//
//  Created by Benji Tusk on 7/27/22.
//

import SwiftUI

struct SubmissionTileView: View {
    let submission: Submission
    
    var body: some View {
        VStack {
            SingleAxisGeometryReader(axis: .horizontal) { width in
                VStack(alignment: .center) {
                        VStack(alignment: .leading, spacing: 8) {
                            PostRowHeader(submission: submission)
                            Text(submission.title)
                                .fixedSize(horizontal: false, vertical: true)
                                .bold()
                        }
                    HStack {
                        HStack {
                            Button(action: {}, label: {Image(systemName: "chevron.up.circle")})
                                .foregroundColor(.primary)
                            Text("\(submission.upVotes)")
                                .fontWeight(.semibold)
                            Button(action: {}, label: {Image(systemName: "chevron.down.circle")})
                                .foregroundColor(.primary)
                        }.font(.title2)
                        Spacer()
                        HStack(spacing: 15) {
                            Button {} label: {
                                HStack(spacing: 3) {
                                    Text("\(submission.commentCount)")
                                    Image(systemName: "bubble.left.and.bubble.right")
                                }
                            }
                            Button(action: {}, label: {Image(systemName: "bookmark")})
                            Button(action: {}, label: {Image(systemName: "square.and.arrow.up")})
                        }
                            .foregroundColor(.gray)
                    }
                .padding(.top, 5)
                .padding(.bottom)
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    .padding(.bottom, 5)
            }
        }
        .background(Color("bk"))
        .cornerRadius(10)
        .padding(9)
    }
}

struct SubmissionTileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeFeedView().preferredColorScheme(.light)
            HomeFeedView().preferredColorScheme(.dark)
        }
//        .padding()
    }
}
