setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Watford'
No_round = 28

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red",
    HomeGKColour = c("#FF1493"),
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold", "Matip", "van Dijk", "Robertson",
        "Milner", "Fabinho", "Wijnaldum",
        "Salah", "Mané", "Origi"
    ),
    HomeSub = c("Henderson 70'", 62, "Keita 84'", 82, "Lallana 78'", 102),
    Homescorer = c(10, 10, 11, 4, 4),

    Away = "4-4-2",
    AwayColour = "yellow", Away2Colour = "black",
    AwayGKColour = c("#1C86EE"),
    AwayLineup = c(
        "Foster",
        "Masina", "Cathcart", "Mariappa", "Janmaat",
        "Pereyra", "Capoue", "Doucouré", "Hughes",
        "Deeney", "Deulofeu"
    ),
    AwaySub = c("Sema 84'", 62, "Gray 73'", 102, "Cleverley 73'", 112)
)


dev.off()
