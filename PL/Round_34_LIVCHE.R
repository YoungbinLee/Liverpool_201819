setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Chelsea'
No_round = 34

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000",
    HomeGKColour = "#FFFF00",
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold", "Matip", "van Dijk", "Robertson",
        "Henderson", "Fabinho", "Keita",
        "Salah", "Firmino", "Mané"
    ),
    HomeSub = c("Milner 77'", 62, "Wijnaldum 66'", 82, "Shaqiri 90'", 92),
    Homescorer = c(9, 11),

    Away = "4-3-3",
    AwayColour = "#0000FF", Away2Colour = "#0000FF",
    AwayGKColour = "#E0EEEE",
    AwayLineup = c(
        "Arrizabalaga",
        "Emerson", "Davie Luiz", "Rüdiger", "Azpilicueta",
        "Loftus-Cheek", "Jorginho", "Kanté",
        "Willian", "E Hazard", "Hudson-Odoi"
    ),
    AwaySub = c("Christensen 40'", 42, "Barkley 75'", 62, "Higuaín 56'", 112)
)

dev.off()
