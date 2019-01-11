setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
)

Hometeam = 'Napoli'
Awayteam = 'Liverpool'

CairoPDF(file = paste("CL/Champions League ", "Group C game 2 ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 CHAMPIONS LEAGUE", "Group C game 2", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-3-3",
    HomeColour = c("#00BFFF"), Home2Colour = "white", 
    HomeGKColour = c("#32CD32"), 
    HomeLineup = c(
        "Ospina",
        "Maksimovic","Albiol","Koulibaly","Mário Rui",
        "Marques Loureiro","Hamsik\n(Zielinski 81')","Callejón",
        "Ruiz\n(Verdi 68')","Milik\n(Mertens 68')","Insigne"
    )
    ,
   
    Away = "4-3-3",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = "#FFFF00", 
    AwayLineup = c(
        "Alisson",
        "Robertson","Gomez","Van Dijk","Alexander-Arnold",
        "Milner\n(Fabinho 76')","Wijnaldum", "Keita\n(Henderson 19')",
        "Mane\n(Sturridge 89')",
        "Roberto Firmino",
        "Salah"
    )
    ,
    Homescorer = c(11)
)

dev.off()


