setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'FC Porto'

CairoPDF(file = paste("CL/Champions League Quarter Finals 1st leg ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 Champions League", "Quarter Finals 1st leg", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#00FF00"),
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold", "Lovren", "van Dijk", "Milner",
        "Henderson", "Fabinho", "Keita",
        "Salah", "Firmino", "Mané"
    ),
    HomeSub = c("Sturridge 82'", 102, "Origi 73'", 112),
    Homescorer = c(10, 8),
    
    Away = "4-4-2",
    AwayColour = "#FFFFFF", Away2Colour = "#0000FF",
    AwayGKColour = "#999999",
    AwayLineup = c(
        "Casillas",
        "Alex Telles", "E. Militão", "Felipe", "Maxi",
        "Otãvio", "Oliver", "Danilo", "Jesus C.",
        "Soares", "Marega"
    ),
    AwaySub = c("Andrade dos Santos 77'", 52, 
                "Almeida Costa 73'", 62, "Brahimi 62'", 102)
)

dev.off()


