setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Chelsea'
Awayteam = 'Liverpool'
No_round = '06'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#0000FF", Home2Colour = "#0000FF",
    HomeGKColour = "#FFC125",
    HomeLineup = c(
        "Arrizabalaga",
        "Azpilicueta", "Christensen", "Tomori", "Emerson",
        "Kante", "Jorginho", "Kovacic",
        "Willian", "Abraham", "Mount"
    ),
    HomeSub = c("Zouma 42'", 32, "Alonso 15'", 52, "Batshuayi 77'", 102),
    Homescorer = c(6),
    
    Away = "4-3-3",
    AwayColour = "#FF0000", Away2Colour = "#FF0000",
    AwayGKColour = "#000000",
    AwayLineup = c(
        "Adrian",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Wijnaldum", "Fabinho", "Henderson",
        "Mane", "Firmino", "Salah"
    ),
    AwaySub = c("Lallana 84'", 82, "Gomez 92'", 112, "Milner 71'", 92),
    Awayscorer = c(10, 5)
)

dev.off()
