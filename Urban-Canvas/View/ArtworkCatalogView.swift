//
//  ArtworkCatalogView.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 03/07/2026.
//

import SwiftUI

struct ArtworkCatalogView: View {
    var body: some View {
        NavigationStack {
            List(artworks) { artwork in
                NavigationLink {
                    ArtworkDetailView(artwork: artwork)
                } label: {
                    ArtworkRowView(artwork: artwork)
                }
            }
            .navigationTitle("Liste des Street arts")
        }
    }
}

#Preview {
    ArtworkCatalogView()
}
