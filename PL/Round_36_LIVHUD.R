setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Huddersfield Town'
No_round = 36

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
        "Alexander-Arnold", "Lovren", "van Dijk", "Robertson",
        "Wijnaldum", "Henderson", "Keita",
        "Salah", "Sturridge", "Mané"
    ),
    HomeSub = c("Gomez 88'", 22, "Shaqiri 73'", 62, "Oxlade-\nChamberlain 73'", 102),
    Homescorer = c(11, 11, 9, 9, 8),

    Away = "4-3-3",
    AwayColour = "#FFFFFF", Away2Colour = "#00B2EE",
    AwayGKColour = "#7FFF00",
    AwayLineup = c(
        "Lössl",
        "Durm", "Kongolo", "Schindler", "Smith",
        "Hogg", "Bacuna", "Stankovic",
        "Mbenza", "Mounie", "Grant"
    ),
    AwaySub = c("Löwe 65'", 102, "Pritchard 81'", 82, "Kachunga 87'", 92)
)

dev.off()
