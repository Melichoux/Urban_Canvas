//
//  File.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 02/07/2026.
//

import Foundation

//binding avec author??

struct Artwork: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let image: String
    let type: String
    let conservation: String
    let date: String
    let author: String
    let localisation: String
    let latitude: Double
    let longitude: Double
}

let artworks = [
    Artwork(
            title: "Collage coloré du Panier",
            description: "Un collage vibrant et coloré réalisé au cœur du quartier du Panier, mêlant motifs graphiques et portraits stylisés typiques du travail de l'artiste.",
            image: "collage",
            type: "Collage",
            conservation: "Bon état",
            date: "2022",
            author: authors[0].name!,
            localisation: "1-3 Rue du Bouleau, 13002 Marseille",
            latitude: 43.29749,
            longitude: 5.36724
        ),
     
        Artwork(
            title: "La femme qui cherche son avenir",
            description: "Une grande fresque représentant une jeune femme flottante, symbole d'une ville en perpétuelle transformation, entre quartiers abandonnés et renaissances urbaines.",
            image: "femmeAvenir",
            type: "Fresque",
            conservation: "Bon état",
            date: "2021",
            author: authors[1].name!,
            localisation: "Marseille (quartier variable)",
            latitude: 43.2985,
            longitude: 5.372
        ),
     
        Artwork(
            title: "Silhouette au pochoir",
            description: "Un pochoir représentant une silhouette féminine, réalisé dans les ruelles étroites du Panier, quartier historique du street art marseillais.",
            image: "silhouettePochoir",
            type: "Pochoir",
            conservation: "État moyen",
            date: "2020",
            author: authors[2].name!,
            localisation: "12-14 Rue du Panier, 13002 Marseille",
            latitude: 43.2967,
            longitude: 5.3665
        ),
     
        Artwork(
            title: "Graffiti du Puits Saint-Antoine",
            description: "Un graffiti aux lettrages travaillés et aux couleurs vives, signé par l'un des artistes emblématiques de la scène marseillaise.",
            image: "puitsStAntoine",
            type: "Graffiti",
            conservation: "Bon état",
            date: "2021",
            author: authors[3].name!,
            localisation: "2-12 Rue Puits Saint-Antoine, 13002 Marseille",
            latitude: 43.2965,
            longitude: 5.367
        ),
     
        Artwork(
            title: "King Kong à Marseille",
            description: "Une affiche détournée dans l'esprit graphique des années 50-60, mettant en scène King Kong au milieu du décor urbain marseillais, avec une pointe d'humour caractéristique.",
            image: "kingKongMarseille",
            type: "Affiche",
            conservation: "État moyen",
            date: "2019",
            author: authors[4].name!,
            localisation: "Le Panier, 13002 Marseille",
            latitude: 43.297,
            longitude: 5.3668
        ),
     
        Artwork(
            title: "La pieuvre en cuisine",
            description: "Une œuvre intrigante mettant en scène une pieuvre colorée dans un décor culinaire improbable, signature du style ludique de l'artiste.",
            image: "pieuvre",
            type: "Fresque",
            conservation: "Bon état",
            date: "2020",
            author: authors[5].name!,
            localisation: "Le Panier, 13002 Marseille",
            latitude: 43.2968,
            longitude: 5.3666
        ),
     
        Artwork(
            title: "Portrait au pochoir",
            description: "Un portrait réalisé au pochoir dans un style photoréaliste, œuvre d'un artiste mexicain reconnu internationalement pour ce type de technique.",
            image: "portraitPochoir",
            type: "Pochoir",
            conservation: "Bon état",
            date: "2021",
            author: authors[6].name!,
            localisation: "Le Panier, 13002 Marseille",
            latitude: 43.2969,
            longitude: 5.3667
        ),
     
        Artwork(
            title: "Le plongeur et la tortue",
            description: "Une fresque monumentale s'élevant sur toute la hauteur d'un immeuble, représentant un plongeur en dialogue silencieux avec une tortue géante, dans un face-à-face poétique.",
            image: "plongeur",
            type: "Fresque",
            conservation: "Bon état",
            date: "2018",
            author: authors[7].name!,
            localisation: "Rue Vian, 13006 Marseille",
            latitude: 43.2928,
            longitude: 5.3835
        ),
     
        Artwork(
            title: "Personnages japonisants",
            description: "Une série de personnages inspirés de l'esthétique japonaise, aux couleurs franches, qui captent immédiatement le regard des passants du Cours Julien.",
            image: "persoJaponisant",
            type: "Fresque",
            conservation: "Bon état",
            date: "2020",
            author: authors[8].name!,
            localisation: "Rue Ferdinand-Rey, 13006 Marseille",
            latitude: 43.2919,
            longitude: 5.3838
        ),
     
        Artwork(
            title: "Portrait pochoir Cours Julien",
            description: "Un portrait au pochoir multicouche, technique caractéristique de cet artiste pionnier du street art français, exposé dans les rues du Cours Julien.",
            image: "portraitPochoirCJ",
            type: "Pochoir",
            conservation: "État moyen",
            date: "2017",
            author: authors[9].name!,
            localisation: "Cours Julien, 13006 Marseille",
            latitude: 43.2924,
            longitude: 5.3844
        ),
     
        Artwork(
            title: "Monsieur Chat du Cours Ju",
            description: "La silhouette jaune et souriante du célèbre chat, figure familière du street art français, apposée sur une façade du quartier.",
            image: "mrChatMarseille",
            type: "Pochoir",
            conservation: "Bon état",
            date: "2015",
            author: authors[10].name!,
            localisation: "Cours Julien, 13006 Marseille",
            latitude: 43.2923,
            longitude: 5.3842
        ),
     
        Artwork(
            title: "Space Invader marseillais",
            description: "Une mosaïque en pixel art représentant un envahisseur extraterrestre, discrètement installée en hauteur, à la manière du célèbre jeu vidéo qui inspire l'artiste.",
            image: "invader",
            type: "Mosaïque",
            conservation: "Bon état",
            date: "2016",
            author: authors[11].name!,
            localisation: "Marseille (emplacement variable)",
            latitude: 43.296,
            longitude: 5.375
        ),
     
        Artwork(
            title: "Fresque de la Cour Jobin",
            description: "Une fresque collective de grande ampleur réalisée par un collectif de graffeurs, visible dans la cour principale de la Friche de la Belle de Mai.",
            image: "fresque",
            type: "Fresque",
            conservation: "Bon état",
            date: "2019",
            author: authors[12].name!,
            localisation: "Friche de la Belle de Mai, 13003 Marseille",
            latitude: 43.3096,
            longitude: 5.3897
        ),
     
        Artwork(
            title: "Personnage à l'allure singulière",
            description: "Un personnage aux traits atypiques et à l'allure décalée, peint près de la piste de danse extérieure de la Friche, dans le style reconnaissable de l'artiste.",
            image: "persoSingulier",
            type: "Fresque",
            conservation: "Bon état",
            date: "2019",
            author: authors[13].name!,
            localisation: "Friche de la Belle de Mai, 13003 Marseille",
            latitude: 43.3095,
            longitude: 5.3896
        ),
     
        Artwork(
            title: "Le Phare",
            description: "Une œuvre représentant un phare dont le faisceau lumineux s'aligne avec l'ombre projetée d'un poteau métallique voisin, accompagnée d'une phrase énigmatique sur la perception de soi.",
            image: "phare",
            type: "Pochoir",
            conservation: "Sous protection",
            date: "2025",
            author: authors[14].name!,
            localisation: "Rue Félix Frégier, 13007 Marseille",
            latitude: 43.2843,
            longitude: 5.3611
        ),
    
        Artwork(
            title: "Fernandel en mosaïque",
            description: "Une petite mosaïque représentant le visage souriant de Fernandel, installée par l'artiste sur la façade de l'immeuble où l'acteur et chanteur marseillais est né en 1903, à l'angle du boulevard Chave et du boulevard Eugène Pierre.",
            image: "fernandel",
            type: "Mosaïque",
            conservation: "Bon état",
            date: "2020",
            author: authors[11].name!,
            localisation: "72 Boulevard Chave, 13005 Marseille",
            latitude: 43.2947,
            longitude: 5.3945
    )
]
