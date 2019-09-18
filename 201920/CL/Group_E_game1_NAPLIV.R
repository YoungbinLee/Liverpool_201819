setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'Napoli'
Awayteam = 'Liverpool'

cairo_pdf(file = paste("CL/Champions League Group E Game 1 ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 Champions League Group E Game 1"),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-4-2",
    HomeColour = "#1C86EE", Home2Colour = "#FFFFFF", 
    HomeGKColour = "#FFE54F",
    HomeLineup = c(
        "Meret",
        "Di Lorenzo", "Manolas", "Koulibaly", "Mario Rui",
        "Callejon", "Marques Loureiro", "Ruiz", "Insigne",
        "Mertens", "Lozano"
    ),
    HomeSub = c("Zielinski 66'", 92, "Llorente 69'", 112, "Elmas 75'", 72),
    Homescorer = c(112, 10),
    
    
    Away = "4-3-3",
    AwayColour = "#FF0000", Away2Colour = "#FF0000",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Adrian",
        "Robertson", "van Dijk", "Matip", "Alexander-Arnold",
        "Henderson", "Fabinho", "Milner",
        "Mané", "Firmino", "Salah"
    ),
    AwaySub = c()
)

dev.off()


