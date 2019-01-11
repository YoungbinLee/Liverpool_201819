setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Watford'
Awayteam = 'Liverpool'
No_round = 13

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    
    Home = "4-2-3-1",
    HomeColour = "yellow", Home2Colour = "black", 
    HomeGKColour = c("#00B2EE"),
    HomeLineup = c(
        "Foster",
        "Femenía","Mariappa","Cathcart","Masina",
        "Doucouré","Capoue",
        "Hughes","Deulofeu","Pereyra",
        "Deeney"
    )
    ,
    HomeSub = c("Gray 75'", 82, "Success 57'", 92),

    Away = "4-2-3-1",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#00EE00"), 
    AwayLineup = c(
        "Alisson",
        "Robertson","van Dijk","Lovren","Alexander-Arnold",
        "Wijnaldum","Henderson",
        "Mané","Firmino","Shaqiri",
        "Salah"
    )
    ,
    AwaySub = c("Milner 74'", 102, "Matip 92'", 92, "Fabinho 86'", 82),
    
    Awayscorer = c(5, 11, 9)
)

dev.off()


