setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Manchester United'
No_round = 17

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour = "red", Home2Colour = "red",
    HomeGKColour = "#FFFF00",
    HomeLineup = c(
        "Alisson",
        "Clyne","Lovren","van Dijk","Robertson",
        "Wijnaldum","Fabinho",
        "Mané","Roberto Firmino","Keita",
        "Salah"
    )
    ,
    HomeSub = c("Henderson 84'",82, "Shaqiri 70'",102),
   
    Away = "3-4-3",
    AwayColour = "#2F4C69", Away2Colour = "#2F4C69",
    AwayGKColour = c("#00CD00"), 
    AwayLineup = c(
        "de Gea",
        "Bailly","Lindelöf","Darmian",
        "Young","Herrera","Matic","Diogo Dalot",
        "Lingard","Lukaku","Rashford"
    ),
    AwaySub = c("Fellaini 45'",82, "Martial 79'",72, "Mata 85'",92),
    
    Homescorer = c(8,102,102),
    Awayscorer = c(9)
)

dev.off()


