setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Manchester United'
Awayteam = 'Liverpool'
No_round = '09'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "3-4-2-1",
    HomeColour = "#FF0000", Home2Colour = "#000000",
    HomeGKColour = "#DD00DD",
    HomeLineup = c(
        "de Gea",
        "Lindelof", "Maguire", "Marcos Rojo",
        "Wan-Bissaka", "McTominay", "Fred", "Young",
        "Pereira", "James",
        "Rashford"
    ),
    HomeSub = c("Martial 84'", 112, "Williams 94'", 92),
    Homescorer = c(11),
    
    Away = "4-3-3",
    AwayColour = "#FFFFFF", Away2Colour = "#191970",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Wijnaldum", "Fabinho", "Henderson",
        "Mane", "Firmino", "Origi"
    ),
    AwaySub = c("Oxlade-Chamberlain 60'", 112, "Lallana 71'", 82, "Keita 82'", 52),
    Awayscorer = c(82)
)

dev.off()
