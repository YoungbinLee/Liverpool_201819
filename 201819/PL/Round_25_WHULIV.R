setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'West Ham United'
Awayteam = 'Liverpool'
No_round = 25

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-4-2",
    HomeColour =  "#A52A2A", Home2Colour = "#FFFFFF",
    HomeGKColour = "#000000",
    HomeLineup = c(
        "Fabianski",
        "Fredericks", "Diop", "Ogbonna", "Cresswell",
        "Snodgrass", "Noble", "Rice", "Felipe Anderson",
        "Antonio", "Chicharito"
    )
    ,
    HomeSub = c("Obiang 79'", 72, "Masuaku 91'", 92, "Carrol 79'", 112),

    Away = "4-2-3-1",
    AwayColour = "#E0E0E0", Away2Colour = "#969696",
    AwayGKColour = "#FF1493",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Milner",
        "Fabinho", "Keita",
        "Mané", "Firmino", "Lallana",
        "Salah"
    ),
    AwaySub = c("Shaqiri 69'", 102, "Origi 75'", 92),

    Homescorer = c(10),
    Awayscorer = c(8)
)   

dev.off()
