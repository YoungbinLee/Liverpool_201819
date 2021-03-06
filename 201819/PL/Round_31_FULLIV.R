setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Fulham'
Awayteam = 'Liverpool'
No_round = 31

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "#FFFFFF", Home2Colour = "#000000",
    HomeGKColour = "#008B8B",
    HomeLineup = c(
        "Rico",
        "Fosu-Mensah", "Chambers", "Ream", "Brayan",
        "Zambo Anguissa", "Cairney", "Seri",
        "Babel", "Mitrovic", "Ayité"
    ),
    HomeSub = c("Christie 73'", 22, "Kebano 82'", 72, "R Sessegnon 65'", 82),
    Homescorer = c(9),

    Away = "4-3-3",
    AwayColour = "#FF0000", Away2Colour = "#FF0000",
    AwayGKColour = c("#FFFF00"),
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Wijnaldum", "Fabinho", "Lallana",
        "Mané", "Firmino", "Salah"
    ),
    AwaySub = c("Milner 72'", 82, "Sturridge 92'", 112, "Origi 72'", 102),
    Awayscorer = c(9, 82)
)

dev.off()
