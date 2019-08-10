setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Tottenham Hotspur'
No_round = 32

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
        "Milner", "Henderson", "Wijnaldum",
        "Mané", "Firmino", "Salah"
    ),
    HomeSub = c("Fabinho 77'", 62, "Origi 77'", 72, "Lovren 94'", 112),
    Homescorer = c(10),

    Away = "3-4-3",
    AwayColour = "#FFFFFF", Away2Colour = "#0C1468",
    AwayGKColour = "#390B82",
    AwayLineup = c(
        "Lloris",
        "Vertonghen", "D Sánchez", "Alderweireld",
        "Rose", "Eriksen", "Sissoko", "Trippier",
        "Alli", "Kane", "Lucas Moura"
    ),
    AwaySub = c("Son Heung-Min 69'", 32, "Llorente 91'", 62, "Davies 82'", 112),
    Awayscorer = c(11, -4)
)

dev.off()
