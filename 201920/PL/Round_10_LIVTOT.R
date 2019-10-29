setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'Tottenham Hotspur'
No_round = '10'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000",
    HomeGKColour = "#00FF00",
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold", "Lovren", "van Dijk", "Robertson", 
        "Henderson", "Fabinho", "Wijnaldum",
        "Salah", "Firmino", "Mane"
    ),
    HomeSub = c("Milner 77'", 82, "Gomez 85'", 92, "Origi 93'", 102),
    Homescorer = c(5, 9),
    
    Away = "4-2-3-1",
    AwayColour = "#FFFFFF", Away2Colour = "#00008B",
    AwayGKColour = "#8EE5EE",
    AwayLineup = c(
        "Gazzaniga",
        "Rose", "D Sanchez", "Alderweireld", "Aurier",
        "Winks", "Sissoko",
        "Son Heung-Min", "Alli", "Eriksen",
        "Kane"
    ),
    AwaySub = c("Lucas Moura 84'", 52, "Ndombele 63'", 62, "Lo Celso 88'", 102),
    Awayscorer = c(11)
)

dev.off()
