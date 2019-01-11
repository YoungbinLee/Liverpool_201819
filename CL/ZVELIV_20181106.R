setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Crvena Zvezda'
Awayteam = 'Liverpool'

CairoPDF(file = paste("CL/Champions League ", "Group C game 4 ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 CHAMPIONS LEAGUE", "Group C game 4", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-5-1",
    HomeColour = "white", Home2Colour = "red", 
    HomeGKColour = c("#00FF00"), 
    HomeLineup = c(
        "Borjan",
        "Stojkovic\n(Gobeljic 59')","Savic","Degenek","Rodic",
        "Krsticic\n(Jovicic 73')","Jovancic",
        "Srnic","Marin\n(Causic 64')","Ben Nabouhane",
        "Pavkov"
    )
    ,
   
    Away = "4-3-3",
    AwayColour = c("#8A2BE2"), Away2Colour = c("#EE3A8C"),
    AwayGKColour = c("#EE30A7"), 
    AwayLineup = c(
        "Alisson",
        "Robertson","Van Dijk","Matip","Alexander-Arnold\n(Gomez 45')",
        "Lallana\n(Origi 79')","Wijnaldum", "Milner",
        "Mané", "Sturridge\n(Roberto Firmino 45')", "Salah"
    )
    ,
    Homescorer = c(11,11)
)

dev.off()


