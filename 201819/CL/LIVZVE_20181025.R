setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Crvena Zvezda'
# No_round = 1

CairoPDF(file = paste("CL/Champions League ", "Group C game 3 ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 CHAMPIONS LEAGUE", "Group C game 3", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#FFFF00"), 
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold","Gomez","Van Dijk","Robertson\n(Moreno 82')",
        "Shaqiri\n(Lallana 68')","Fabinho","Wijnaldum",
        "Salah\n(Sturridge 73')","Firmino","Mané"
    )
    ,
   
    Away = "4-2-3-1",
    AwayColour = c("#27408B"), Away2Colour = c("#27408B"),
    AwayGKColour = c("#00FF00"), 
    AwayLineup = c(
        "Borjan",
        "Gobeljic","Degenek","Babic","Stojkovic",
        "Jovicic\n(Causic 75')","Krsticic","Ben Nabouhane\n(Simic 81')",
        "Ebecilio\n(Jovancic 65')","Srnic",
        "Boakye"
    )
    ,
    Homescorer = c(9,9,10,11)
)

dev.off()


