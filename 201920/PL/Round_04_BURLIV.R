setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Burnley'
Awayteam = 'Liverpool'
No_round = '04'

cairo_pdf(file = paste("PL/PREMIER LEAGUE ROUND ", No_round, " ",
                       Hometeam, " vs ", Awayteam,
                       ".pdf", sep=""),
          width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 PREMIER LEAGUE ROUND", No_round, sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-4-2",
    HomeColour = "#B22222", Home2Colour = "#8EE5EE",
    HomeGKColour = "#EEEE00",
    HomeLineup = c(
        "Pope",
        "Lowton", "Tarkowski", "Mee", "Pieters",
        "Lennon", "Westwood ", "Cork", "McNeil",
        "Barnes", "Wood"
    ),
    HomeSub = c("Rodriguez 73'", 102),
    Homescorer = c(-11),
    
    Away = "4-3-3",
    AwayColour = "#454545", Away2Colour = "#00CDCD",
    AwayGKColour = "#76EE00",
    AwayLineup = c(
        "Adrian",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Wijnaldum", "Fabinho", "Henderson",
        "Mane", "Firmino", "Salah"
    ),
    AwaySub = c("Oxlade-Chamberlain 71'", 82, "Shaqiri 85'", 102, "Origi 85'", 92),
    Awayscorer = c(9, 10)
)

dev.off()
