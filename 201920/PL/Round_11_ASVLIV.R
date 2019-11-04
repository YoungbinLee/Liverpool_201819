setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Aston Villa'
Awayteam = 'Liverpool'
No_round = '11'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#A52A2A", Home2Colour = "#8DEEEE",
    HomeGKColour = "#000000",
    HomeLineup = c(
        "Heaton",
        "Guilbert", "Engels", "Mings", "Targett",
        "McGinn", "Nakamba", "Douglas Luiz", "El Ghazi",
        "Wesley", "Trezeguet"
    ),
    HomeSub = c("El Mohamady 69'", 22, "Hourihane 73'", 82, "Kodjia 86'", 102),
    Homescorer = c(11),
    
    Away = "4-3-3",
    AwayColour = "#FFFFFF", Away2Colour = "#000080",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk", "Lovren", "Alxander-Arnold",
        "Wijnaldum", "Lallana", "Henderson",
        "Mane", "Firmino", "Salah"
    ),
    AwaySub = c("Keita 84'", 72, "Origi 65'", 62, "Oxlade-Chamberlain 65'", 112),
    Awayscorer = c(9, 2)
)

dev.off()
