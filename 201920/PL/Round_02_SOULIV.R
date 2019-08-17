setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Southampton'
Awayteam = 'Liverpool'
No_round = '02'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-4-2",
    HomeColour = "#FF0000", Home2Colour = "#000000",
    HomeGKColour = "#98F5FF",
    HomeLineup = c(
        "Gunn",
        "Bednarek", "Yoshida", "Vestergaard", "Valery",
        "Ward-Prowse", "Romeu", "Højbjerg", "Bertrand",
        "Adams", "Redmond"
    ),
    HomeSub = c("Ings 64'", 72, "Djenepo 77'", 92, "Armstrong 68'", 102),
    Homescorer = c(72),
    
    Away = "4-3-3",
    AwayColour = "#000000", Away2Colour = "#00CDCD",
    AwayGKColour = "#76EE00",
    AwayLineup = c(
        "Adrian",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Milner", "Wijnaldum", "Oxlade-Chamberlain",
        "Mane", "Firmino", "Salah"
    ),
    AwaySub = c("Henderson 89'", 82, "Fabinho 74'", 62, "Origi 79'", 112),
    Awayscorer = c(9, 10)
)

dev.off()
