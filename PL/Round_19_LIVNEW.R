setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Newcastle United'
No_round = 19

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red",
    HomeGKColour = "#FFFF00",
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold","Lovren","van Dijk","Robertson",
        "Wijnaldum","Henderson","Shaqiri",
        "Salah","Roberto Firmino","Mané"
    )
    ,
    HomeSub = c("Clyne 82'",52, "Fabinho 62'",62, "Sturridge 69'",102),
   
    Away = "5-3-2",
    AwayColour = "white", Away2Colour = "black",
    AwayGKColour = c("#00FF00"), 
    AwayLineup = c(
        "Dubravka",
        "Ritchie","Dummett","Lascelles","Fernandez","Yedlin",
        "Kenedy","Diamé","Hayden",
        "Joselu","Muto"
    ),
    AwaySub = c("Murphy 80'",22, "Longstaff 73'",72),
    
    Homescorer = c(3,9,8,62)
)

dev.off()


