setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Crystal Palace'
No_round = 23

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour =  "red", Home2Colour = "red",
    HomeGKColour = "#FFFF00",
    HomeLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Milner",
        "Henderson", "Fabinho",
        "Mané", "Firmino", "Keita",
        "Salah"
    )
    ,
    HomeSub = c("Lallana 87'", 72, "Shaqiri 71'", 102, "Camacho 94'", 112),

    Away = "4-5-1",
    AwayColour = "white", Away2Colour = "white",
    AwayGKColour = c("#00FF00"),
    AwayLineup = c(
        "Speroni",
        "van Aanholt", "Sakho", "Tomkins", "Wan-Bissaka",
        "Zaha", "Kouyaté", "Milivojevic", "McArthur", "Townsend",
        "J Ayew"
    ),
    AwaySub = c("Meyer 81'", 92, "Schlupp 75'", 72, "Wickham 81'", 112),

    Homescorer = c(11, 11, 8, 9),
    Awayscorer = c(4, 10, 92)
)

dev.off()
