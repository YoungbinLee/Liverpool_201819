setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Sheffield United'
Awayteam = 'Liverpool'
No_round = '07'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "3-5-2",
    HomeColour = "#FF0000", Home2Colour = "#000000",
    HomeGKColour = "#00FF00",
    HomeLineup = c(
        "Henderson",
        "Basham", "Egan", "O'Connell",
        "Baldock", "Lundstram", "Norwood", "Fleck", "Stevens",
        "Robinson", "McBurnie"
    ),
    HomeSub = c("Clarke 77'", 62, "Mousset 60'", 102),
    # Homescorer = c(6),
    
    Away = "4-3-3",
    AwayColour = "#404040", Away2Colour = "#00CDCD",
    AwayGKColour = "#FFFF00",
    AwayLineup = c(
        "Adrian",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Wijnaldum", "Fabinho", "Henderson",
        "Mane", "Firmino", "Salah"
    ),
    AwaySub = c("Origi 64'", 82, "Milner 87'", 102, "Oxlade-Chamberlain 94'", 92),
    Awayscorer = c(6)
)

dev.off()
