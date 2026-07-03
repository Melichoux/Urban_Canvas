//
//  Author.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 02/07/2026.
//

import Foundation
struct Author: Identifiable {
    let id = UUID()
    let name: String?
    let img: String?
    let age: Double? //verif float
    let origin: String?
    let style: String?
    let website: String?
}

let authors = [
    Author(
            name: "Manyoly",
            img: "",
            age: 30,
            origin: "France",
            style: "Collage urbain coloré",
            website: "N/A"
        ),
     
        Author(
            name: "Mahn Kloix",
            img: "",
            age: 38,
            origin: "France",
            style: "Fresque murale figurative",
            website: "N/A"
        ),
     
        Author(
            name: "RNST",
            img: "",
            age: 32,
            origin: "France",
            style: "Pochoir",
            website: "N/A"
        ),
     
        Author(
            name: "Joke",
            img: "",
            age: 34,
            origin: "France",
            style: "Graffiti / lettrage",
            website: "N/A"
        ),
     
        Author(
            name: "Batch",
            img: "",
            age: 33,
            origin: "France",
            style: "Affiche détournée / humour graphique",
            website: "N/A"
        ),
     
        Author(
            name: "Nhobi",
            img: "",
            age: 31,
            origin: "France",
            style: "Fresque figurative colorée",
            website: "N/A"
        ),
     
        Author(
            name: "Vale Stencil",
            img: "",
            age: 39,
            origin: "Mexique",
            style: "Pochoir photoréaliste",
            website: "N/A"
        ),
     
        Author(
            name: "Gütan",
            img: "",
            age: 36,
            origin: "France",
            style: "Fresque murale figurative",
            website: "N/A"
        ),
     
        Author(
            name: "Stex",
            img: "",
            age: 30,
            origin: "France",
            style: "Fresque d'inspiration japonisante",
            website: "N/A"
        ),
     
        Author(
            name: "Christian Guémy (C215)",
            img: "",
            age: 53,
            origin: "France",
            style: "Pochoir multicouche, portraits",
            website: "https://www.c215.fr"
        ),
     
        Author(
            name: "Thoma Vuille (Monsieur Chat)",
            img: "",
            age: 54,
            origin: "France",
            style: "Pochoir / figure emblématique",
            website: "N/A"
        ),
     
        Author(
            name: "Invader",
            img: "",
            age: 57,
            origin: "France",
            style: "Mosaïque pixel art",
            website: "https://www.space-invaders.com"
        ),
     
        Author(
            name: "TKO Crew",
            img: "",
            age: 32,
            origin: "France",
            style: "Fresque collective / graffiti",
            website: "N/A"
        ),
     
        Author(
            name: "Mr. Difuz",
            img: "",
            age: 34,
            origin: "France",
            style: "Fresque figurative aux personnages atypiques",
            website: "N/A"
        ),
     
        Author(
            name: "Banksy",
            img: "",
            age: 52,
            origin: "Royaume-Uni",
            style: "Pochoir conceptuel",
            website: "https://banksy.co.uk"
        )
]
