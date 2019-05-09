setwd("C:/Users/YoungbinLee/Documents/Liverpool_201819/")
source("C:/Users/YoungbinLee/Documents/Liverpool_201819/FootballResult.R")

Hometeam = 'Newcastle United'
Awayteam = 'Liverpool'
No_round = 37

cairo_pdf(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam,
                      ".pdf", sep=""),
         width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "5-4-1",
    HomeColour = "#FFFFFF", Home2Colour = "#000000",
    HomeGKColour = "#55FF55",
    HomeLineup = c(
        "Dubravka",
        "Manquillo", "Schär", "Lascelles", "Dummett", "Ritchie",
        "Pérez", "Ki Sung-yueng", "Hayden", "Atsu",
        "Rondón"
    ),
    HomeSub = c("Muto 91'", 32),
    Homescorer = c(11, 10),

    Away = "4-3-3",
    AwayColour = "#FF0000", Away2Colour = "#FF0000",
    AwayGKColour = "#FF33FF",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Lovren", "Alexander-Arnold",
        "Henderson", "Fabinho", "Wijnaldum",
        "Mané", "Sturridge", "Salah"
    ),
    AwaySub = c("Milner 83'", 42, "Shaqiri 66'", 82, "Origi 73'", 112),
    Awayscorer = c(11, 112, 3)
)

dev.off()

