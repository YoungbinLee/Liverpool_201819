setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Leicester city'
No_round = 24

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
        "Robertson", "van Dijk", "Matip", "Henderson",
        "Wijnaldum", "Keita",
        "Shaqiri", "Firmino", "Mané",
        "Salah"
    )
    ,
    HomeSub = c("Lallana 66'", 72, "Sturridge 82'", 92, "Fabinho 67'", 82),

    Away = "4-2-3-1",
    AwayColour = "blue", Away2Colour = "blue",
    AwayGKColour = c("#F0F0F0"),
    AwayLineup = c(
        "Schmeichel",
        "Chilwell", "Maguire", "Evans", "Ricardo Pereira",
        "Mendy", "Ndidi",
        "Albrighton", "Maddison", "Gray",
        "Vardy"
    ),
    AwaySub = c("Okazaki 84'", 102, "Choudhury 75'", 92, "Iheanacho 90'", 112),

    Homescorer = c(10),
    Awayscorer = c(3)
)

dev.off()
