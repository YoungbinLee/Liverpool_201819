setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Manchester United'
Awayteam = 'Liverpool'
No_round = 27

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-1-2-1-2",
    HomeColour =  "red", Home2Colour = "black",
    HomeGKColour = c("#00CD00"),
    HomeLineup = c(
        "De Gea",
        "Young", "Smalling", "Lindelöf", "Shaw",
        "McTominay", "Herrera", "Pogba", "Mata",
        "Rashford", "Lukaku"
    )
    ,
    HomeSub = c("Pereira 21'", 72, "Lingard 25'", 92, "Sánchez 43'", 922),

    Away = "4-3-3",
    AwayColour = "#E0EEEE", Away2Colour = "#A3A3A3",
    AwayGKColour = "#FFFF00",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Milner",
        "Wijnaldum", "Henderson", "Fabinho",
        "Mané", "Firmino", "Salah"
    ),
    AwaySub = c("Shaqiri 72'", 72, "Origi 79'", 112, "Sturridge 31'", 102),
)   

dev.off()
