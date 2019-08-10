setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Southampton'
Awayteam = 'Liverpool'
No_round = 33

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "3-4-3",
    HomeColour = "#FF0000", Home2Colour = "#000000",
    HomeGKColour = "#00CD00",
    HomeLineup = c(
        "Gunn",
        "Bednarek", "Yoshida", "Vestergaard",
        "Valery", "Romeu", "Højbjerg", "Bertrand",
        "Ward-Prowse", "Long", "Redmond"
    ),
    HomeSub = c("Austin 83'", 42, "Armstrong 83'", 62, "Sims 62'", 102),
    Homescorer = c(10),

    Away = "4-3-3",
    AwayColour = "#9B30FF", Away2Colour = "#9B30FF",
    AwayGKColour = "#FF34B3",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Wijnaldum", "Fabinho", "Keita",
        "Mané", "Firmino", "Salah"
    ),
    AwaySub = c("Milner 59'", 62, "Henderson 59'", 52, "Lovren 88'", 82),
    Awayscorer = c(11, 8, 52)
)

dev.off()
