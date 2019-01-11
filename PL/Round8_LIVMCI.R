setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Manchester City'
No_round = 8

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#FFFF00"), 
    HomeLineup = c(
        "Alisson",
        "Gomez","Lovren","van Dijk","Robertson",
        "Wijnaldum", "Henderson","Milner\n(Keita 29')",
        "Salah", "Roberto Firmino\n(Sturridge 72')", "Mané"
    )
    ,
   
    Away = "4-3-3",
    AwayColour = c("#181463"), Away2Colour = c("#181463"),
    AwayGKColour = c("#00FF00"), 
    AwayLineup = c(
        "Ederson",
        "Mendy","Laporte","Stones","Walker",
        "Bernardo Silva","Fernandinho","Silva",
        "Sterling\n(Sané 76')","Agüero\n(Gabriel Jesus 66')","Mahrez"
        
    )
)

dev.off()


