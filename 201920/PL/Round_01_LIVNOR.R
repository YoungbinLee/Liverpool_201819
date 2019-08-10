setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'Norwich City'
No_round = '01'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000",
    HomeGKColour = "#000000",
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold", "Gomez", "van Dijk", "Robertson",
        "Wijnaldum", "Fabinho", "Henderson",
        "Salah", "Firmino", "Origi"
    ),
    HomeSub = c("Adrián 39'", 12, "Milner 86'", 102, "Mané 74'", 112),
    Homescorer = c(11, 9, 4),
    
    Away = "4-2-3-1",
    AwayColour = "#FFFF00", Away2Colour = "#228B22",
    AwayGKColour = "#ADADAD",
    AwayLineup = c(
        "Krul",
        "Lewis", "Godfrey", "Hanley", "Aarons",
        "Trybull", "McLean",
        "Cantwell", "Stiepermann", "Buendía",
        "Pukki"
    ),
    AwaySub = c("Hernández 70'", 62, "Leitner 58'", 92, "Drmic 83'", 112),
    Awayscorer = c(-4, 11)
)

dev.off()
