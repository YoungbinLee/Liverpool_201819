setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'AFC Bournmouth'
No_round = 26

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour =  "red", Home2Colour = "red",
    HomeGKColour = "#FFFF00",
    HomeLineup = c(
        "Alisson",
        "Milner", "Matip", "van Dijk", "Robertson",
        "Wijnaldum", "Fabinho", "Keita",
        "Salah", "Firmino", "Mané"
    )
    ,
    HomeSub = c("Alexander-Arnold 77'", 22, "Sturridge 90'", 102,
                "Origi 87'", 112),

    Away = "4-5-1",
    AwayColour = "white", Away2Colour = "#183A72",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Boruc",
        "Rico", "Aké", "S Cook", "A Smith",
        "Fraser", "Surman", "Lerma", "Gosling", "Ibe",
        "King"
    ),
    AwaySub = c("Mepham 80'", 22, "Solanke 59'", 102, "Mousset 73'", 82),

    Homescorer = c(11, 9, 6)
)

dev.off()
