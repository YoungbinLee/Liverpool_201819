setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Liverpool'
Awayteam = 'KRC Genk'

cairo_pdf(file = paste("CL/Champions League Group E Game 4 ",
                       Hometeam, " vs ", Awayteam, 
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 Champions League Group E Game 4"),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-3-3",
    HomeColour = "#FF0000", Home2Colour = "#FF0000", 
    HomeGKColour = "#00FF00",
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold", "Gomez", "van Dijk", "Milner",
        "Wijnaldum", "Fabinho", "Keita",
        "Salah", "Oxlade-Chamberlain", "Origi"
    ),
    HomeSub = c("Robertson 74'", 82, "Mane 75'", 102, "Firmino 89'", 112),
    Homescorer = c(10, 6),
    
    
    Away = "4-4-2",
    AwayColour = "#FFFFFF", Away2Colour = "#FFFFFF",
    AwayGKColour = "#FFFF00",
    AwayLineup = c(
        "Coucke",
        "de Norre", "Lucumi", "Dewaest", "Cuesta",
        'Hrosovsky', 'Berge', 'Heynen', 'Maehle',
        'Ito', 'Samatta'
    ),
    AwaySub = c("Bongonda 85'", 62, "Onuachu 85'", 22, "Ndongala 68'", 102),
    Awayscorer = c(11)
)

dev.off()
