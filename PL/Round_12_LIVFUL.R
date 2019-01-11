setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Liverpool'
Awayteam = 'Fulham'
No_round = 12

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-2-3-1",
    HomeColour = "red", Home2Colour = "red", 
    HomeGKColour = c("#FFFF00"), 
    HomeLineup = c(
        "Alisson",
        "Alexander-Arnold","Gomez","van Dijk","Robertson",
        "Fabinho\n(Keita 92')","Wijnaldum\n(Henderson 69')",
        "Roberto Firmino","Shaqiri\n(Milner 81')","Mané",
        "Salah"
    )
    ,
   
    Away = "4-2-3-1",
    AwayColour = 'white', Away2Colour = 'black',
    AwayGKColour = "#FF8C00" , 
    AwayLineup = c(
        "Rico",
        "Le Marchand","Mawson","Odoi","Christie",
        "Zambo Anguissa\n(Johansen 84')","Chambers",
        "Schürrle\n(Vietto 78')","Cairney\n(Seri 63')","R Sessegnon",
        "Mitrovic"
    ),
    Homescorer = c(11,9)
)

dev.off()


