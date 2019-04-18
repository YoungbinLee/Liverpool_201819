setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'FC Porto'
Awayteam = 'Liverpool'

CairoPDF(file = paste("CL/Champions League Quarter Finals 2nd leg ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 Champions League", "Quarter Finals 2nd leg", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FFFFFF", Home2Colour = "#0000FF", 
    HomeGKColour = "#CDCDCD",
    HomeLineup = c(
        "Casillas",
        "Militão", "Pepe", "Felipe", "Alex Telles",
        "Otãvio", "Danilo", "Herrera",
        "Jesus C.", "Marega", "Brahimi"
    ),
    HomeSub = c("Soares 45'", 62, "Andrade dos Santos 78'", 92, 
                "Almeida Costa 81'", 112),
    Homescorer = c(2),
    
    Away = "4-3-3",
    AwayColour = "#FF0000", Away2Colour = "#FF0000",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Milner", "Fabinho", "Wijnaldum",
        "Mané", "Origi", "Salah"
    ),
    AwaySub = c("Gomez 66'", 52, "Henderson 71'", 22, "Firmino 45'", 102),
    Awayscorer = c(11, 9, 102, 3)
)

dev.off()


