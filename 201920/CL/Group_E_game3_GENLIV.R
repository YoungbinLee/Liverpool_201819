setwd("C:/Users/YoungbinLee/Documents/Liverpool/201920")
source("C:/Users/YoungbinLee/Documents/Liverpool/FootballResult.R")

Hometeam = 'KRC Genk'
Awayteam = 'Liverpool'

cairo_pdf(file = paste("CL/Champions League Group E Game 3 ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8, family = "Comic Sans MS")

Football_result(
    matchtype = paste("2019/20 Champions League Group E Game 3"),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-4-2",
    HomeColour = "#1C86EE", Home2Colour = "#1C86EE", 
    HomeGKColour = "#FFBB00",
    HomeLineup = c(
        "Coucke",
        "Maehle", "Cuesta", "Lucumi", "Uronen",
        "Ito", "Heynen", "Berge", "T.Bongonda",
        "Samatta", "Onuachu"
    ),
    HomeSub = c("Hagi 87'", 62, "Ndongala 66'", 92, "Odey 81'", 112),
    Homescorer = c(112),
    
    
    Away = "4-3-3",
    AwayColour = "#FF0000", Away2Colour = "#FF0000",
    AwayGKColour = "#00FF00",
    AwayLineup = c(
        "Alison",
        "Robertson", "van Dijk", "Lovren", "Milner",
        "Keita", "Fabinho", "Oxlade-Chamberlain",
        "Mané", "Firmino", "Salah"
    ),
    AwaySub = c("Gomez 63'", 22, "Wijnaldum 74'", 82, "Origi 80'", 102),
    Awayscorer = c(11, 9, 8, 8)
)

dev.off()


