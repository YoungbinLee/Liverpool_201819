setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'Arsenal'
No_round = '03'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000",
    HomeGKColour = "#76EE00",
    HomeLineup = c(
        "Adrian",
        "Alexander-Arnold", "Matip", "van Dijk", "Robertson",
        "Wijnaldum", "Fabinho", "Henderson",
        "Salah", "Firmino", "Mane"
    ),
    HomeSub = c("Oxlade-Chamberlain 77'", 112, "Milner 69'", 62, "Lallana 86'", 102),
    Homescorer = c(9, 9, 3),
    
    Away = "4-3-1-2",
    AwayColour = "#192854", Away2Colour = "#FFD700",
    AwayGKColour = "#00D5FF",
    AwayLineup = c(
        "Leno",
        "Monreal", "David Luiz", "Papastathopoulos", "Maitland-Niles",
        "Willock", "Xhaka", "Guendouzi",
        "Ceballos",
        "Pepe", "Aubameyang"
    ),
    AwaySub = c("Mkhitaryan 86'", 82, "Torreira 61'", 92, "Lacazette 81'", 62),
    Awayscorer = c(92)
)

dev.off()
