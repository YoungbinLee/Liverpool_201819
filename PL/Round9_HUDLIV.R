setwd("/Users/youngbin/Desktop/R/Liverpool_201819")
source("FootballResult.R")
CairoFonts(  # slight mod to example in ?CairoFonts page
    regular="ComicSansMS",
    bold="FreeSans:style=Bold",
    italic="FreeSans:style=Oblique",
    bolditalic="FreeSans:style=BoldOblique"
    )

Hometeam = 'Huddersfield Town'
Awayteam = 'Liverpool'
No_round = 9

CairoPDF(file = paste("PL/PREMIER LEAGUE ", No_round, " ROUND ",
                      Hometeam, " vs ", Awayteam, 
                      ".pdf", sep=""),
         width = 10, height = 8)

Football_result(
    matchtype = paste("2018/19 PREMIER LEAGUE", No_round, "ROUND", sep=" "),
    Hometeam = Hometeam, Awayteam = Awayteam,
    Home = "4-5-1",
    HomeColour = c("#FFFFFF"), Home2Colour = c("#1E90FF"), 
    HomeGKColour = c("#68228B"),
    HomeLineup = c(
        "Lössl",
        "Durm","Zanka","Schindler","Löwe",
        "Hadergjonaj\n(Mbenza 69')","Billing\n(Mounie 70')",
        "Mooy","Hogg\nDiakhaby 92')","Pritchard",
        "Depoitre"
    )
    ,

    Away = "4-3-3",
    AwayColour = "red", Away2Colour = "red",
    AwayGKColour = c("#FFFF00"), 
    AwayLineup = c(
        "Alisson",
        "Robertson", "van Dijk","Lovren","Gomez",
        "Milner\n(Firmino 77')","Henderson\n(Wijnaldum 45')", "Shaqiri",
        "Lallana\n(Fabinho 69')","Strurridge","Salah")
    ,
    
    Awayscorer = 11
)

dev.off()


