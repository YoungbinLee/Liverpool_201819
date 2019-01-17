setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Brighton'
Awayteam = 'Liverpool'
No_round = 22

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-4-1-1",
    HomeColour =  "white", Home2Colour = "blue",
    HomeGKColour = "#FFFF00",
    HomeLineup = c(
        "Button",
        "Montoya", "Duffy", "Dunk", "Bong",
        "March", "Stephens", "Pröpper", "Locadia",
        "Groß",
        "Murray"
    )
    ,
    HomeSub = c("Knockaert 66'", 62, "Kayal 79'", 102, "Andone 66'", 112),

    Away = "4-2-3-1",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#00FF00"),
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Fabinho", "Alexander-Arnold",
        "Henderson", "Wijnaldum",
        "Mané", "Firmino", "Shaqiri",
        "Salah"
    ),
    AwaySub = c("Milner 72'", 102, "Keita 90'", 82, "Origi 94'", 112),

    Awayscorer = c(11)
)

dev.off()
