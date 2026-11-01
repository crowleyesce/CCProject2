require("L5")


descriptors = {"a friend!","an enemy!?","a nuisance...","something cool!","a mystery.","a monster."}
fontSize = 30

local imagePaths = {
    "assets/bat.png",
    "assets/chipmunk.png",
    "assets/cro.png",
    "assets/deer.png",
    "assets/fox.png",
    "assets/hedgehog.png",
    "assets/kangaroo.png",
    "assets/leopard.png",
    "assets/parrot.png",
    "assets/rabbit.png",
    "assets/snake.png",
    "assets/zebra.png"
}
local currentImage
local currentText = "You got a "
local overlayColor = {255,255,255,0}

function setup()
    size(550, 700)
    pickRandomImage()
end

function pickRandomImage()
    local randomIdx = math.floor(random(1, #imagePaths + 1))
    local chosenPath = imagePaths[randomIdx]
    
    currentImage = loadImage(chosenPath)
    currentText = 'You got '..random(descriptors)
end

function mouseClicked()
    pickRandomImage()
    overlayColor = {random(255), random(255), random(255), random(50, 99)}
end

function draw()
    background(255)
    if currentImage then
        image(currentImage, 137.5, 175, width/2,height/2)
    end
    fill(overlayColor[1], overlayColor[2], overlayColor[3], overlayColor[4])
    rect(0,0,550,700)
    fill(0)
    textSize(fontSize)
    text(currentText, 50, 50, width/2, height/2)
end