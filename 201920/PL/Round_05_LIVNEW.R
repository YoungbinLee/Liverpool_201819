setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'Newcastle United'
No_round = '05'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000",
    HomeGKColour = "#FFFF00",
    HomeLineup = c(
        "Adrian",
        "Alexander-Arnold", "Matip", "van Dijk", "Robertson", 
        "Oxlade-Chamberlain", "Fabinho", "Wijnaldum",
        "Salah", "Mane", "Origi"
    ),
    HomeSub = c("Firmino 37'", 112, "Milner 75'", 62, "Shaqiri 84'", 82),
    Homescorer = c(10, 10, 9),
    
    Away = "5-4-1",
    AwayColour = "#000000", Away2Colour = "#FFFFFF",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Dubraka",
        "Willems", "Dummett", "Lascelles", "Schär", "Krafth",
        "Atsu", "Shelvey", "Hayden", "Almirón",
        "Joelinton"
    ),
    AwaySub = c("Manquillo 67'", 62, "Fernandez 80'", 52, "Muto 67'", 102),
    Awayscorer = c(2)
)

dev.off()
