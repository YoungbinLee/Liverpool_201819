setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Burnley'
No_round = 30

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000",
    HomeGKColour = c("#FFFF00"),
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold", "Matip", "van Dijk", "Robertson",
        "Wijnaldum", "Fabinho", "Lallana",
        "Salah", "Firmino", "Mané"
    ),
    HomeSub = c("Henderson 68'", 62, "Keita 77'", 82, "Sturridge 86'", 22),
    Homescorer = c(10, 11, 10, 11),

    Away = "4-4-2",
    AwayColour = "#FFFFFF", Away2Colour = "#FFFFFF",
    AwayGKColour = c("#00FF00"),
    AwayLineup = c(
        "Heaton",
        "Taylor", "Mee", "Tarkowski", "Bardsley",
        "McNeil", "Cork", "Westwood", "Hendrick",
        "Wood", "Barnes"
    ),
    AwaySub = c("Gudmundsson 79'", 92, "Vydra 86'", 112, "Crouch 79'", 102),
    Awayscorer = c(92, 8)
)


dev.off()
