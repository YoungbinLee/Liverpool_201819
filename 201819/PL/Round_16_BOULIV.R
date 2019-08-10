setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'AFC Bournemouth'
Awayteam = 'Liverpool'
No_round = 16

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-4-2",
    HomeColour = "red", Home2Colour = "black",
    HomeGKColour = "#E6FF45", #형광연두노랑
    HomeLineup = c(
        "Begovic",
        "Francis","S Cook","Aké","Daniels",
        "Brooks","Lerma","Surman","Stanislas",
        "Fraser","King"
    )
    ,
    HomeSub = c("Rico 83'",52, "Mousset 65'",62, "Mings 83'", 92),
   
    Away = "4-3-3",
    AwayColour = "#DBDBDB", Away2Colour = "#A8A8A8",
    AwayGKColour = c("#FF34B3"), 
    AwayLineup = c(
        "Alisson",
        "Robertson","van Dijk","Matip","Milner",
        "Keita","Fabinho","Wijnaldum",
        "Roberto Firmino","Salah","Shaqiri"
    ),
    AwaySub = c("Mané 65'",112, "Lallana 65'",62, "Henderson 81'",92),
    
    Homescorer = c(-3),
    Awayscorer = c(10,10,10)
)

dev.off()


