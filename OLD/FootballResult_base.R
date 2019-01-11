if(!"plotrix" %in% installed.packages()){install.packages("plotrix")}
if(!"shinyjs" %in% installed.packages()){install.packages("shinyjs")}
if(!"V8" %in% installed.packages()){install.packages("V8")}
if(!"Cairo" %in% installed.packages()){install.packages("Cairo")}
if(!"extrafont" %in% installed.packages()){install.packages("extrafont")}
if(!"png" %in% installed.packages()){install.packages("png")}
library(plotrix)
library(shinyjs)
library(V8)
library(Cairo)
library(extrafont)
library(png)

draw.pitch <- function(matchtype=NULL, Hometeam=NULL, Awayteam=NULL){
    ## Formal size of Football pitch 
    ## pitch X and Y = 105m, 68m
    ## center circle's radius = 10yd = 9.144m
    ## goal area's x and y = 20yd, 6yd = 18.288m, 5.4864m
    ## penalty area's x and y = 44yd, 18yd = 40.2336m, 16.4592m
    ## penalty arc's radius = 10yd = 9.144m
    ## penalty mark's x = 12yd = 10.9728m
    plot(c(0,105), c(0,85), type = "n", xlab = "", ylab = "", axes=FALSE)
    # for(i in seq(1,17,2)){
    #     rect(-1.5 + (i-1)*6, -1, -1.5 + i*6, 69, col = "#228B22", border = NA)
    # }
    # for(i in seq(2,18,2)){
    #     rect(-1.5 + (i-1)*6, -1, -1.5 + i*6, 69, col = "#008B45", border = NA)
    # }
    rect(-1, -1, 106, 69, col="#228B22", border = NA)
    rect(0, 0, 52.5, 68, border = "white", lwd = 1.5)
    rect(52.5, 0, 105, 68, border = "white", lwd = 1.5)
    draw.circle(x=52.5, y=34, radius=9.144, n=500, border="white", lwd = 1.5)
    draw.circle(x=10.9728, y=34, radius=9.144, n=500,border="white", lwd = 1.5)
    draw.circle(x=94.0272, y=34, radius=9.144, n=500,border="white", lwd = 1.5)
    rect(0, 13.8832, 16.4592, 54.1168, col="#228B22",border="white", lwd = 1.5)
    rect(88.5408, 13.8832, 105, 54.1168,col="#228B22",border="white", lwd = 1.5)
    rect(0, 24.856, 5.4864, 43.144, border = "white", lwd = 1.5)
    rect(99.5136, 24.856, 105, 43.144, border = "white", lwd = 1.5)
}


draw.formation <- function(Home, 
                           HomeColour="black", Home2Colour= "gray20",
                           HomeGKColour="white",
                           Away, 
                           AwayColour="white", Away2Colour= "gray20",
                           AwayGKColour="black",
                           HomeLineup,
                           AwayLineup,
                           Homescorer = NULL, Awayscorer = NULL){
    if(Home == "4-2-3-1"){
        Home.x <- c(8,20,20,20,20,29,29,37,37,37,47)
        Home.y <- c(34,10,26,42,58,22,46,14,34,54,34)
    }else if(Home == "4-3-3"){
        Home.x <- c(8,20,20,20,20,32,32,32,45,45,45)
        Home.y <- c(34,10,26,42,58,18,34,50,18,34,50)
    }else if(Home == "4-4-2"){
        Home.x <- c(8,20,20,20,20,33,33,33,33,45,45)
        Home.y <- c(34,10,26,42,58,10,26,42,58,26,42)
    }else if(Home == "4-1-4-1"){
        Home.x <- c(8,20,20,20,20,29,37,37,37,37,47)
        Home.y <- c(34,10,26,42,58,34,10,26,42,58,34)
    }else if(Home == "3-4-1-2"){
        Home.x <- c(8,20,20,20,29,29,29,29,37,45,45)
        Home.y <- c(34,18,34,50,10,26,42,58,34,22,46)
    }else if(Home == "3-4-3"){
        Home.x <- c(8,20,20,20,32,32,32,32,45,45,45)
        Home.y <- c(34,18,34,50,10,26,42,58,18,34,50)
    }else if(Home == "3-5-2"){
        Home.x <- c(8,20,20,20,33,33,33,33,33,45,45)
        Home.y <- c(34,14,34,54,6,18,34,50,62,22,46)
    }else if(Home == "4-5-1"){
        Home.x <- c(8,20,20,20,20,33,33,33,33,33,45)
        Home.y <- c(34,10,26,42,58,6,18,34,50,62,34)
    }
    
    points(x = Home.x[1], y = Home.y[1], 
           pch = 21, bg = HomeGKColour, col = "gray20", cex = 3.7, lwd = 2)
    points(x = Home.x[-1], y = Home.y[-1], 
           pch = 21, bg = HomeColour, col = Home2Colour, cex = 3.7, lwd = 2)
    
    
    if(Away == "4-2-3-1"){
        Away.x <- c(97,85,85,85,85,76,76,68,68,68,58)
        Away.y <- c(34,10,26,42,58,22,46,14,34,54,34)
    }else if(Away == "4-3-3"){
        Away.x <- c(97,85,85,85,85,73,73,73,60,60,60)
        Away.y <- c(34,10,26,42,58,18,34,50,18,34,50)
    }else if(Away == "4-4-2"){
        Away.x <- c(97,85,85,85,85,72,72,72,72,60,60)
        Away.y <- c(34,10,26,42,58,10,26,42,58,26,42)
    }else if(Away == "4-1-4-1"){
        Away.x <- c(97,85,85,85,85,76,68,68,68,68,58)
        Away.y <- c(34,10,26,42,58,34,10,26,42,58,34)
    }else if(Away == "3-4-1-2"){
        Away.x <- c(97,85,85,85,76,76,76,76,68,60,60)
        Away.y <- c(34,18,34,50,10,26,42,58,34,22,46)
    }else if(Away == "3-4-3"){
        Away.x <- c(97,85,85,85,73,73,73,73,60,60,60)
        Away.y <- c(34,18,34,50,10,26,42,58,18,34,50)
    }else if(Away == "3-5-2"){
        Away.x <- c(97,85,85,85,72,72,72,72,72,60,60)
        Away.y <- c(34,14,34,54,6,18,34,50,62,22,46)
    }else if(Away == "4-5-1"){
        Away.x <- c(97,85,85,85,85,72,72,72,72,72,60)
        Away.y <- c(34,10,26,42,58,6,18,34,50,62,34)
    }
    
    points(x = Away.x[1], y = Away.y[1], 
           pch = 21, bg = AwayGKColour, col = "gray20", cex = 3.7, lwd = 2)
    points(x = Away.x[-1], y = Away.y[-1], 
           pch = 21, bg = AwayColour, col = Away2Colour, cex = 3.7, lwd = 2)
    
    ## players' name
    text(HomeLineup, x= Home.x, y= Home.y - 5.5, 
         cex = 0.85, family="Comic Sans MS" )
    text(AwayLineup, x= Away.x, y= Away.y - 5.5, 
         cex = 0.85, family="Comic Sans MS" )
    
    ## Indicate Scorer
    Ball <- readPNG("ball-icon-png-4636.png")
    scorertable <- list(data.frame(table(Homescorer), stringsAsFactors = F), 
                        data.frame(table(Awayscorer), stringsAsFactors = F))
    if(nrow(scorertable[[1]])!=0){
        for(i in 1:nrow(scorertable[[1]])){
            idx <- as.numeric(as.character(scorertable[[1]]$Homescorer))[i]
            for(j in 1:scorertable[[1]][i,]$Freq){
                rasterImage(Ball, 
                            Home.x[idx]+2+1*(j-1), Home.y[idx]+1.5, 
                            Home.x[idx]+4+1*(j-1), Home.y[idx]+3.5)
            }
        }
    }
    
    if(nrow(scorertable[[2]])!=0){
        for(i in 1:nrow(scorertable[[2]])){
            idx <- as.numeric(as.character(scorertable[[2]]$Awayscorer))[i]
            for(j in 1:scorertable[[2]][i,]$Freq){
                rasterImage(Ball, 
                            Away.x[idx]+2+1*(j-1), Away.y[idx]+1.5, 
                            Away.x[idx]+4+1*(j-1), Away.y[idx]+3.5)
            }
        }
    }
    Homescore = sum(Homescorer)
    Awayscore = sum(Awayscorer)
    
    text(x = 52.5, y= 75,
         labels = paste("<",matchtype,">\n", Hometeam, Homescore,"-", 
                        Awayscore, Awayteam, "\n", sep = " "),
         family="Calibri", cex = 2, font = 2)
    
}
