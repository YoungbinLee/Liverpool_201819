setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Cardiff City'
Awayteam = 'Liverpool'
No_round = 35

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-2-3-1",
    HomeColour = "#0000FF", Home2Colour = "#0000FF",
    HomeGKColour = "#E0EEEE",
    HomeLineup = c(
        "Etheridge",
        "Peltier", "Morrison", "Ecuele Manga", "Bennett",
        "Gunnarsson", "Ralls",
        "Mendes-Laing", "Camarasa", "Hoilett",
        "Niasse"
    ),
    HomeSub = c("Murphy 83'", 102, "Bacuna 79'", 72, "Zohore 67'", 112),

    Away = "4-3-3",
    AwayColour = "#FF0000", Away2Colour = "#FF0000",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Keita", "Henderson", "Wijnaldum",
        "Mané", "Firmino", "Salah"
    ),
    AwaySub = c("Gomez 86'", 52, "Fabinho 71'", 62, "Milner 75'", 622),
    Awayscorer = c(622, 8)
)

dev.off()
