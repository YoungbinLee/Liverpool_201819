setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Napoli'

CairoPDF(file = paste("CL/Champions League ", "Group C game 6 ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 CHAMPIONS LEAGUE", "Group C game 6", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#FFFF00"), 
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold","Matip","Van Dijk","Robertson",
        "Wijnaldum","Henderson","Milner",
        "Salah","Roberto Firmino","Mané"
    )
    ,
    HomeSub = c("Lovren 90'",22, "Fabinho 85'",82, "Keita 79'", 102),
   
    Away = "4-3-3",
    AwayColour = c("#00BFFF"), Away2Colour = "white",
    AwayGKColour = "#00CD00", 
    AwayLineup = c(
        "Ospina",
        "Mário Rui","Koulibaly","Raul Albiol","Maksimovic",
        "Faián Ruiz","Hamsik","Allan",
        "Insigne","Mertens","Callejon"
    )
    ,
    AwaySub = c("Ghoulam 70'",22, "Zielinski 62'",62, "Milik 67'", 102),
    
    Homescorer = c(9)
)

dev.off()


