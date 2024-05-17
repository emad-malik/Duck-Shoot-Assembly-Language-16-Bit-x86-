.model small
.stack 100h

.data

Shot dw 0
Score dw 0
Round dw 0
choice db 0
Duck1L dw 0
Duck1R dw 0
Duck1T dw 0
Duck1B dw 0
Duck2L dw 0
Duck2R dw 0
Duck2T dw 0
Duck2B dw 0
Bullets dw 3
TopScore dw 4500
ShotDead dw 0
CheckFlag dw 0
Duck1Dead dw 0
Duck2Dead dw 0
Algorithm db 0
Direction dw 0
Direction2 dw 0
mouseStatus db 0
keyboardStatus db 0
scoreString db 'SCORE ', 0
backString db '3.BACK ', 0
bulletsString db 'BULLETS ', 0
startString db '1.START GAME ', 0
topScoreString db 'TOP SCORE: ', 0
yourScoreString db 'YOUR SCORE ', 0
gameAString db '1.GAME A  1 DUCK ', 0
playerNameString db 'PLAYER NAME: ', 0
gameBString db '2.GAME B  2 DUCKS ', 0
inputBuffer db 'HAIDER', 252 dup(0), 0
page3String db 'EASY MODE: 1 DUCK ', 0
inputString db 'ENTER PLAYER NAME: ', 0
page4String db 'HARD MODE: 2 DUCKS ', 0
modeSelectString db '2.CHANGE MODE ', 0
pressEscString db 'PRESS ESC FOR EXIT', 0
pressSpaceString db 'PRESS SPACE TO SHOOT', 0
arrowKeysString db 'USE ARROW KEYS TO MOVE', 0
welcomeString db '! WELCOME TO DUCK SHOOT !', 0
mouseConnectedString db 'MOUSE IS CONNECTED ', 0
welcomeGameString db '! GAME STARTS IN 3 SEC !', 0
mouseNotConnectedString db 'MOUSE IS DISCONNECTED ', 0
keyboardConnectedString db 'KEYBOARD IS CONNECTED ', 0
keyboardNotConnectedString db 'KEYBOARD IS DISCONNECTED ', 0

duckString db ' ____  _   _  ____ _  __', 13, 10
           db '|  _ \| | | |/ ___| |/ /', 13, 10
           db '| | | | | | | |   | . / ', 13, 10
           db '| |_| | |_| | |___| . \ ', 13, 10
           db '|____/ \___/ \____|_|\_\', 13, 10, 0
shootString db ' ____  _   _  ___   ___ _____ '
            db '          / ___|| | | |/ _ \ / _ \_   _|'
            db '          \___ \| |_| | | | | | | || |  '
            db '           ___) |  _  | |_| | |_| || |  '
            db '          |____/|_| |_|\___/ \___/ |_|  ', 0

GameRound1Image db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh

GameRound2Image db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh

GameRound3Image db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh
                db 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh

DuckImage   db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 1Fh, 11h, 00h, 00h, 05h, 05h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 1Fh, 1Fh, 1Fh, 11h, 05h, 05h, 05h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 1Fh, 1Fh, 1Fh, 11h, 05h, 05h, 05h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 1Fh, 11h, 1Fh, 11h, 05h, 05h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 1Fh, 11h, 1Fh, 11h, 05h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 11h, 1Fh, 11h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 1Fh, 1Fh, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 1Fh, 1Fh, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 11h, 11h, 11h, 11h, 11h, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 1Fh, 1Fh, 1Fh, 1Fh, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 1Fh, 1Fh, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 1Fh, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 1Fh, 1Fh, 1Fh, 11h, 11h, 11h, 11h, 11h, 11h, 1Fh, 11h, 11h, 11h, 1Fh
            db 00h, 00h, 00h, 00h, 00h, 00h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 1Fh, 1Fh, 00h, 00h, 00h, 1Fh, 1Fh, 11h, 11h, 1Fh, 11h, 00h, 1Fh, 1Fh, 1Fh, 00h
            db 00h, 00h, 00h, 00h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 11h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 1Fh, 11h, 1Fh, 11h, 11h, 11h, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 05h, 05h, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 05h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 05h, 05h, 05h, 00h, 00h, 00h, 05h, 05h, 05h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 05h, 05h, 05h, 00h, 00h, 05h, 05h, 05h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 05h, 00h, 00h, 05h, 05h, 05h, 05h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 05h, 05h, 05h, 05h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
            db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 05h, 05h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h

RemoveDuckImage db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h

DuckKillPoints db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 0Fh, 09h, 0Fh, 0Fh, 0Fh, 09h, 0Fh, 0Fh, 0Fh, 09h, 0Fh, 0Fh, 0Fh, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 0Fh, 09h, 0Fh, 09h, 09h, 09h, 0Fh, 09h, 0Fh, 09h, 0Fh, 09h, 0Fh, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 0Fh, 09h, 0Fh, 0Fh, 0Fh, 09h, 0Fh, 09h, 0Fh, 09h, 0Fh, 09h, 0Fh, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 0Fh, 09h, 09h, 09h, 0Fh, 09h, 0Fh, 09h, 0Fh, 09h, 0Fh, 09h, 0Fh, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 0Fh, 09h, 0Fh, 0Fh, 0Fh, 09h, 0Fh, 0Fh, 0Fh, 09h, 0Fh, 0Fh, 0Fh, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
               db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h

GameOver 	db 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
            db 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
            db 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 0Fh, 00h, 00h, 00h, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 00h, 0Fh, 00h, 00h, 00h, 0Fh, 00h, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 00h, 0Fh, 0Fh, 00h, 0Fh, 00h, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 0Fh, 00h, 00h, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 00h, 0Fh, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 00h, 00h, 00h, 0Fh, 00h, 0Fh, 00h, 00h, 00h, 00h, 0Fh, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 0Fh, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh
            db 1Fh, 1Fh, 1Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 1Fh, 1Fh, 1Fh
            db 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh
            db 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh, 1Fh

RemoveCrossHairImage db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h
                     db 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h, 09h

CrossHairImage db 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 0Fh
               db 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh
               db 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh
               db 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh
               db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
               db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h
               db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h
               db 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h
               db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h
               db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h
               db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
               db 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh
               db 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh
               db 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh
               db 0Fh, 0Fh, 0Fh, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, 0Fh, 0Fh, 0Fh
                     
DuckWidthPixels   dw 32   
DuckHeightPixels  dw 29 
RemoveDuckWidthPixels   dw 33   
RemoveDuckHeightPixels  dw 30 
DuckKillWidthPixels   dw 33   
DuckKillHeightPixels  dw 30 

DuckXcoordinate   dw 155
DuckYcoordinate   dw 115  
OrignalDuckXcoordinate   dw 0
OrignalDuckYcoordinate   dw 0

Duck1Xcoordinate   dw 185
Duck1Ycoordinate   dw 115  
OrignalDuck1Xcoordinate   dw 0
OrignalDuck1Ycoordinate   dw 0

CrossHairWidthPixels   dw 15   
CrossHairHeightPixels  dw 15
CrossHairXcoordinate   dw 155
CrossHairYcoordinate   dw 85
RemoveCrossHairWidthPixels   dw 16  
RemoveCrossHairHeightPixels  dw 16 

GameOverWidthPixels   dw 70   
GameOverHeightPixels  dw 30   
GameOverXcoordinate   dw 125
GameOverYcoordinate   dw 85

GameRoundWidthPixels   dw 70   
GameRoundHeightPixels  dw 30   
GameRoundXcoordinate   dw 125
GameRoundYcoordinate   dw 85

.code

PrintGameRound1 proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [GameRoundXcoordinate]    
    mov dx, [GameRoundYcoordinate]    
    lea si, [GameRound1Image]

    mov bx, 0 
GameRound1RowLoop:
    cmp bx, GameRoundHeightPixels
    je GameRound1EndDraw 
    mov dx, GameRoundYcoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, GameRoundWidthPixels

GameRound1ColLoop:
    lodsb 
    cmp al, 0 
    je GameRound1SkipPixel
    mov es:[di], al 

GameRound1SkipPixel:
    inc di 
    loop GameRound1ColLoop

    pop cx
    pop bx
    inc bx 
    jmp GameRound1RowLoop

GameRound1EndDraw:
    pop ds
    ret
PrintGameRound1 endp

PrintGameRound2 proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [GameRoundXcoordinate]    
    mov dx, [GameRoundYcoordinate]    
    lea si, [GameRound2Image]

    mov bx, 0 
GameRound2RowLoop:
    cmp bx, GameRoundHeightPixels
    je GameRound2EndDraw 
    mov dx, GameRoundYcoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, GameRoundWidthPixels

GameRound2ColLoop:
    lodsb 
    cmp al, 0 
    je GameRound2SkipPixel
    mov es:[di], al 

GameRound2SkipPixel:
    inc di 
    loop GameRound2ColLoop

    pop cx
    pop bx
    inc bx 
    jmp GameRound2RowLoop

GameRound2EndDraw:
    pop ds
    ret
PrintGameRound2 endp

PrintGameRound3 proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [GameRoundXcoordinate]    
    mov dx, [GameRoundYcoordinate]    
    lea si, [GameRound3Image]

    mov bx, 0 
GameRound3RowLoop:
    cmp bx, GameRoundHeightPixels
    je GameRound2EndDraw 
    mov dx, GameRoundYcoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, GameRoundWidthPixels

GameRound3ColLoop:
    lodsb 
    cmp al, 0 
    je GameRound3SkipPixel
    mov es:[di], al 

GameRound3SkipPixel:
    inc di 
    loop GameRound3ColLoop

    pop cx
    pop bx
    inc bx 
    jmp GameRound3RowLoop

GameRound3EndDraw:
    pop ds
    ret
PrintGameRound3 endp

RemoveCrossHair proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [CrossHairXcoordinate]    
    mov dx, [CrossHairYcoordinate]    
    lea si, [RemoveCrossHairImage]

    mov bx, 0 
RemoveCrossHairRowLoop:
    cmp bx, RemoveCrossHairHeightPixels
    je RemoveCrossHairEndDraw 
    mov dx, CrossHairYcoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, RemoveCrossHairWidthPixels

RemoveCrossHairColLoop:
    lodsb 
    cmp al, 0 
    je RemoveCrossHairSkipPixel
    mov es:[di], al 

RemoveCrossHairSkipPixel:
    inc di 
    loop CrossHairColLoop

    pop cx
    pop bx
    inc bx 
    jmp RemoveCrossHairRowLoop

RemoveCrossHairEndDraw:
    pop ds
    ret
RemoveCrossHair endp

PrintCrossHair proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [CrossHairXcoordinate]    
    mov dx, [CrossHairYcoordinate]    
    lea si, [CrossHairImage]

    mov bx, 0 
CrossHairRowLoop:
    cmp bx, CrossHairHeightPixels
    je CrossHairEndDraw 
    mov dx, CrossHairYcoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, CrossHairWidthPixels

CrossHairColLoop:
    lodsb 
    cmp al, 0 
    je CrossHairSkipPixel
    mov es:[di], al 

CrossHairSkipPixel:
    inc di 
    loop CrossHairColLoop

    pop cx
    pop bx
    inc bx 
    jmp CrossHairRowLoop

CrossHairEndDraw:
    pop ds
    ret
PrintCrossHair endp

PrintDuck proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [DuckXcoordinate]    
    mov dx, [DuckYcoordinate]    
    lea si, [DuckImage]

    mov bx, 0 
DuckRowLoop:
    cmp bx, DuckHeightPixels
    je DuckEndDraw 
    mov dx, DuckYcoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, DuckWidthPixels

DuckColLoop:
    lodsb 
    cmp al, 0 
    je DuckSkipPixel
    mov es:[di], al 

DuckSkipPixel:
    inc di 
    loop DuckColLoop

    pop cx
    pop bx
    inc bx 
    jmp DuckRowLoop

DuckEndDraw:
    pop ds

    ret
PrintDuck endp

Print1Duck proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [Duck1Xcoordinate]    
    mov dx, [Duck1Ycoordinate]    
    lea si, [DuckImage]

    mov bx, 0 
Duck1RowLoop:
    cmp bx, DuckHeightPixels
    je Duck1EndDraw 
    mov dx, Duck1Ycoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, DuckWidthPixels

Duck1ColLoop:
    lodsb 
    cmp al, 0 
    je Duck1SkipPixel
    mov es:[di], al 

Duck1SkipPixel:
    inc di 
    loop Duck1ColLoop

    pop cx
    pop bx
    inc bx 
    jmp Duck1RowLoop

Duck1EndDraw:
    pop ds

    ret
Print1Duck endp

RemoveDuck proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [DuckXcoordinate]    
    mov dx, [DuckYcoordinate]    
    lea si, [RemoveDuckImage]

    mov bx, 0 
RemoveDuckRowLoop:
    cmp bx, RemoveDuckHeightPixels
    je RemoveDuckEndDraw 
    mov dx, DuckYcoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, RemoveDuckWidthPixels

RemoveDuckColLoop:
    lodsb 
    cmp al, 0 
    je RemoveDuckSkipPixel
    mov es:[di], al 

RemoveDuckSkipPixel:
    inc di 
    loop RemoveDuckColLoop

    pop cx
    pop bx
    inc bx 
    jmp RemoveDuckRowLoop

RemoveDuckEndDraw:
    pop ds

    ret
RemoveDuck endp

Remove1Duck proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [Duck1Xcoordinate]    
    mov dx, [Duck1Ycoordinate]    
    lea si, [RemoveDuckImage]

    mov bx, 0 
Remove1DuckRowLoop:
    cmp bx, RemoveDuckHeightPixels
    je Remove1DuckEndDraw 
    mov dx, Duck1Ycoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, RemoveDuckWidthPixels

Remove1DuckColLoop:
    lodsb 
    cmp al, 0 
    je Remove1DuckSkipPixel
    mov es:[di], al 

Remove1DuckSkipPixel:
    inc di 
    loop Remove1DuckColLoop

    pop cx
    pop bx
    inc bx 
    jmp Remove1DuckRowLoop

Remove1DuckEndDraw:
    pop ds

    ret
Remove1Duck endp

PrintDuckKill proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [DuckXcoordinate]    
    mov dx, [DuckYcoordinate]    
    lea si, [DuckKillPoints]

    mov bx, 0 
DuckKillRowLoop:
    cmp bx, DuckKillHeightPixels
    je DuckKillEndDraw 
    mov dx, DuckYcoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, DuckKillWidthPixels

DuckKillColLoop:
    lodsb 
    cmp al, 0 
    je DuckKillSkipPixel
    mov es:[di], al 

DuckKillSkipPixel:
    inc di 
    loop DuckKillColLoop

    pop cx
    pop bx
    inc bx 
    jmp DuckKillRowLoop

DuckKillEndDraw:
    pop ds
    ret
PrintDuckKill endp

PrintDuck1Kill proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [Duck1Xcoordinate]    
    mov dx, [Duck1Ycoordinate]    
    lea si, [DuckKillPoints]

    mov bx, 0 
Duck1KillRowLoop:
    cmp bx, DuckKillHeightPixels
    je Duck1KillEndDraw 
    mov dx, Duck1Ycoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, DuckKillWidthPixels

Duck1KillColLoop:
    lodsb 
    cmp al, 0 
    je Duck1KillSkipPixel
    mov es:[di], al 

Duck1KillSkipPixel:
    inc di 
    loop Duck1KillColLoop

    pop cx
    pop bx
    inc bx 
    jmp Duck1KillRowLoop

Duck1KillEndDraw:
    pop ds
    ret
PrintDuck1Kill endp

PrintGameOver proc
    push ds
    mov ax, 0A000h
    mov es, ax
   
    mov cx, [GameOverXcoordinate]    
    mov dx, [GameOverYcoordinate]    
    lea si, [GameOver]

    mov bx, 0 
GameOverRowLoop:
    cmp bx, GameOverHeightPixels
    je GameOverEndDraw 
    mov dx, GameOverYcoordinate
    push bx
    mov ax, dx 
    add ax, bx
    mov bx, 320
    mul bx
    add ax, cx 
    mov di, ax
  
    push cx
    mov cx, GameOverWidthPixels

GameOverColLoop:
    lodsb 
    cmp al, 0 
    je GameOverSkipPixel
    mov es:[di], al 

GameOverSkipPixel:
    inc di 
    loop GameOverColLoop

    pop cx
    pop bx
    inc bx 
    jmp GameOverRowLoop

GameOverEndDraw:
    pop ds
    ret
PrintGameOver endp

PrintScore proc
    push ax
    push bx
    push cx
    push dx
    
    mov cx, 0
    
    mov ax, Score
    Loop1Score:
    mov bx, 10
    mov dx, 0
    div bx
    push dx
    inc cx
    cmp ax, 0
    jne Loop1Score
    
    Loop2Score:
    pop dx
    mov ah, 2
    add dl,'0'
    int 21h
    loop Loop2Score
    
    pop dx
    pop cx
    pop bx
    pop ax
    
    ret
PrintScore endp

PrintBullets proc
    push ax
    push bx
    push cx
    push dx
    
    mov cx, 0
    
    mov ax, Bullets
    Loop1Bullets:
    mov bx, 10
    mov dx, 0
    div bx
    push dx
    inc cx
    cmp ax, 0
    jne Loop1Bullets
    
    Loop2Bullets:
    pop dx
    mov ah, 2
    add dl,'0'
    int 21h
    loop Loop2Bullets
    
    pop dx
    pop cx
    pop bx
    pop ax
    
    ret
PrintBullets endp

PrintTopScore proc
    push ax
    push bx
    push cx
    push dx
    
    mov cx, 0
    
    mov ax, TopScore
    Loop1TopScore:
    mov bx, 10
    mov dx, 0
    div bx
    push dx
    inc cx
    cmp ax, 0
    jne Loop1TopScore
    
    Loop2TopScore:
    pop dx
    mov ah, 2
    add dl,'0'
    int 21h
    loop Loop2TopScore
    
    pop dx
    pop cx
    pop bx
    pop ax
    
    ret
PrintTopScore endp

PrintString proc near
    push ax
    push bx
    push cx
    push dx

PrintCharacterRed:
    lodsb
    or al, al
    jz PrintedRed
    mov ah, 0Eh
    int 10h
    jmp PrintCharacterRed

PrintedRed:
    pop dx
    pop cx
    pop bx
    pop ax
    ret
PrintString endp

ReadString proc near
    push ax
    push bx
    push cx
    push dx

read_character:
    mov ah, 0
    int 16h
    cmp al, 13 
    je read_done
    mov [si], al 
    inc si
    mov ah, 0Eh
    int 10h
    jmp read_character

read_done:
    mov byte ptr [si], 0
    pop dx
    pop cx
    pop bx
    pop ax
    ret
ReadString endp

ReadInteger proc near
    push ax
    push bx
    push cx
    push dx

read_digit:
    mov ah, 0
    int 16h
    cmp al, '0'
    jl read_digit
    cmp al, '9'
    jg read_digit
    sub al, '0'
    mov [choice], al

    cmp [choice], 1
    je end_read
    cmp [choice], 2
    je end_read
    cmp [choice], 3
    je end_read

    jmp read_digit

end_read:
    pop dx
    pop cx
    pop bx
    pop ax
    ret
ReadInteger endp

mouseCursor proc
    mov ax, 0
    int 33h

    mov ax, 2
    int 33h

    ret
mouseCursor endp

mouseConnection proc
    mov ax, 0
    int 33h

    mov dh, 23      
    mov dl, 10      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 0Ah 

    cmp ax, 0
    je mouseAbsent

    mov mouseStatus, 1
    jmp mousePresent

mouseAbsent:    
    mov si, offset mouseNotConnectedString
    call PrintString 
    jmp khtm

mousePresent:   
    mov si, offset mouseConnectedString
    call PrintString

khtm:

    ret
mouseConnection endp

keyboardConnection proc
    mov dh, 23      
    mov dl, 9      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 32h

    mov ah, 01h
    int 16h

    cmp ah, 1
    jz keyboardAbsent

    mov keyboardStatus, 1
    jmp keyboardPresent

keyboardAbsent:
    mov si, offset keyboardNotConnectedString
    call PrintString 
    jmp bsNaa

keyboardPresent:
    mov si, offset keyboardConnectedString
    call PrintString

bsNaa:

    ret
keyboardConnection endp

ShotCheck proc
    push ax
    push bx
    push cx
    push dx
    push si
    push di

    mov ax, [DuckXcoordinate]
    mov bx, ax
    add bx, 32
    mov cx, [DuckYcoordinate]
    mov dx, cx
    add dx, 29

    mov si, [CrossHairXcoordinate]
    add si, 8
    mov di, [CrossHairYcoordinate]
    add di, 8

    mov CheckFlag, 0

    cmp ax, si
    jg ShotFailure
    inc CheckFlag

    cmp bx, si
    jl ShotFailure
    inc CheckFlag

    cmp cx, di
    jg ShotFailure
    inc CheckFlag

    cmp dx, di
    jl ShotFailure
    inc CheckFlag

    cmp CheckFlag, 4
    je ShotSuccess
    jmp ShotFailure

ShotSuccess:
    add Score, 1500

    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax

    push bp
    push dx
    push bx
    push cx
    dec Bullets
    call PrintScoreBullets
    call RemoveDuck
    call PrintDuckKill
    call Delay2Sec
    call Delay2Sec
    call DuckMoveEnd
    pop cx
    pop bx
    pop dx
    pop bp

ShotFailure:
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    dec Bullets
    ret

ShotCheck endp

Shot1Check proc
    push ax
    push bx
    push cx
    push dx
    push si
    push di

    mov ax, [DuckXcoordinate]
    mov Duck1L, ax
    mov bx, Duck1L
    add bx, 32
    mov Duck1R, bx
    mov cx, [DuckYcoordinate]
    mov Duck1T, cx
    mov dx, Duck1T
    add dx, 29
    mov Duck1B, dx

    mov ax, [Duck1Xcoordinate]
    mov Duck2L, ax
    mov bx, Duck2L
    add bx, 32
    mov Duck2R, bx
    mov cx, [Duck1Ycoordinate]
    mov Duck2T, cx
    mov dx, Duck2T
    add dx, 29
    mov Duck2B, dx

    mov si, [CrossHairXcoordinate]
    add si, 8
    mov di, [CrossHairYcoordinate]
    add di, 8

    mov CheckFlag, 0

PehliDuckDead:
    mov CheckFlag, 0

    cmp Duck1L, si
    jg DoosriDuckDead
    inc CheckFlag

    cmp Duck1R, si
    jl DoosriDuckDead
    inc CheckFlag

    cmp Duck1T, di
    jg DoosriDuckDead
    inc CheckFlag

    cmp Duck1B, di
    jl DoosriDuckDead
    inc CheckFlag

    cmp CheckFlag, 4
    je Shot1Success

DoosriDuckDead:
    mov CheckFlag, 0

    cmp Duck2L, si
    jg Shot1Failure
    inc CheckFlag

    cmp Duck2R, si
    jl Shot1Failure
    inc CheckFlag

    cmp Duck2T, di
    jg Shot1Failure
    inc CheckFlag

    cmp Duck2B, di
    jl Shot1Failure
    inc CheckFlag

    cmp CheckFlag, 4
    je Shot2Success

Shot1Failure:
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    dec Bullets
    ret

Shot1Success:
    add Score, 1500

    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax

    push bp
    push dx
    push bx
    push cx
    dec Bullets
    call PrintScoreBullets
    call RemoveDuck
    call PrintDuckKill
    call Delay2Sec
    call Delay2Sec
    call DoubleDuckMoveEnd
    pop cx
    pop bx
    pop dx
    pop bp

Shot2Success:
    add Score, 1500

    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax

    push bp
    push dx
    push bx
    push cx
    dec Bullets
    call PrintScoreBullets
    call RemoveDuck
    call PrintDuck1Kill
    call Delay2Sec
    call Delay2Sec
    call DoubleDuckMoveEnd
    pop cx
    pop bx
    pop dx
    pop bp

Shot1Check endp

DuckMoveEnd proc
    push bx
    push cx
    call SetBackgroundGame
    mov Direction, 1
    inc Round
    cmp Round, 1
    je GameRound2
    cmp Round, 2
    je GameRound3
    cmp Round, 3
    je GameRound4

GameRound2:
    call GameKaRound2

GameRound3:
    call GameKaRound3

GameRound4:
    call GameKaRound4

DuckMoveEnd endp

DoubleDuckMoveEnd proc
    push bx
    push cx
    call SetBackgroundGame
    mov Direction, 1
    inc Round
    cmp Round, 1
    je DoubleGameRound2
    cmp Round, 2
    je DoubleGameRound3
    cmp Round, 3
    je DoubleGameRound4

DoubleGameRound2:
    call DoubleGameKaRound2

DoubleGameRound3:
    call DoubleGameKaRound3

DoubleGameRound4:
    call DoubleGameKaRound4

DoubleDuckMoveEnd endp

GameKaRound2 proc
    pop cx
    pop bx
    mov bx, [OrignalDuckXcoordinate]
    mov cx, [OrignalDuckYcoordinate]
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx
    call PrintGameRound2
    call Delay2Sec
    call Delay2Sec
    call SetBackgroundGame
    call DuckAlgo
GameKaRound2 endp

DoubleGameKaRound2 proc
    pop cx
    pop bx
    mov bx, [OrignalDuckXcoordinate]
    mov cx, [OrignalDuckYcoordinate]
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx
    mov si, [OrignalDuck1Xcoordinate]
    mov di, [OrignalDuck1Ycoordinate]
    mov [Duck1Xcoordinate], si
    mov [Duck1Ycoordinate], di
    call PrintGameRound2
    call Delay2Sec
    call Delay2Sec
    call SetBackgroundGame
    call Duck1Algo
DoubleGameKaRound2 endp

GameKaRound3 proc
    pop cx
    pop bx
    mov bx, [OrignalDuckXcoordinate]
    mov cx, [OrignalDuckYcoordinate]
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx
    call PrintGameRound3
    call Delay2Sec
    call Delay2Sec
    call SetBackgroundGame
    call DuckAlgo
GameKaRound3 endp

DoubleGameKaRound3 proc
    pop cx
    pop bx
    mov bx, [OrignalDuckXcoordinate]
    mov cx, [OrignalDuckYcoordinate]
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx
    mov si, [OrignalDuck1Xcoordinate]
    mov di, [OrignalDuck1Ycoordinate]
    mov [Duck1Xcoordinate], si
    mov [Duck1Ycoordinate], di
    call PrintGameRound3
    call Delay2Sec
    call Delay2Sec
    call SetBackgroundGame
    call Duck1Algo
DoubleGameKaRound3 endp

GameKaRound4 proc
    pop cx
    pop bx
    call Exit1Key

GameKaRound4 endp

DoubleGameKaRound4 proc
    pop cx
    pop bx
    call DoubleExit1Key

DoubleGameKaRound4 endp

DuckMove1 proc
    push ax
    push bx
    push cx
    push dx

    mov [DuckXcoordinate], 155
    mov [DuckYcoordinate], 116

    mov bx, [DuckXcoordinate]
    mov cx, [DuckYcoordinate]

    mov [OrignalDuckXcoordinate], bx
    mov [OrignalDuckYcoordinate], cx

    mov [CrossHairXcoordinate], 155
    mov [CrossHairYcoordinate], 85

    mov bp, [CrossHairXcoordinate]
    mov dx, [CrossHairYcoordinate]

DuckMove1Loop:
    cmp Direction, 1
    je Top1Left
    cmp Direction, 2
    je Bottom1Left
    cmp Direction, 3
    je Bottom1Right
    cmp Direction, 4
    je Top1Right
    cmp Direction, 5
    je Bottom1Right2
    cmp Direction, 6
    je Bottom1Left2

Top1Left:
    dec bx
    dec cx
    cmp cx, 0
    jne Key1Check
    mov Direction, 2
    je DuckMove1Loop

Bottom1Left:
    dec bx
    inc cx
    cmp bx, 0
    jne Key1Check
    mov Direction, 3
    je DuckMove1Loop

Bottom1Right:
    inc bx
    inc cx
    cmp cx, 115
    jne Key1Check
    mov Direction, 4
    je DuckMove1Loop

Top1Right:
    inc bx
    dec cx
    cmp cx, 0
    jne Key1Check
    mov Direction, 5
    je DuckMove1Loop

Bottom1Right2:
    inc bx
    inc cx
    cmp bx, 288
    jne Key1Check
    mov Direction, 6
    je DuckMove1Loop

Bottom1Left2:
    dec bx
    inc cx
    cmp cx, 115
    jne Key1Check
    je Stop1Movement

Key1Check:
    mov ah, 01h
    int 16h
    jz NoKey1Press

    mov ah, 00h
    int 16h

    cmp ax, 5000h
    je Down1Arrow

    cmp ax, 4800h
    je Up1Arrow

    cmp ax, 4D00h
    je Right1Arrow

    cmp ax, 4B00h
    je Left1Arrow

    cmp al, 32
    je Shoot1Key

    cmp al, 27
    je Exit1KeyDup

NoKey1Press:
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx

    mov [CrossHairXcoordinate], bp
    mov [CrossHairYcoordinate], dx

    push bp
    push dx
    push bx
    push cx
    call PrintScoreBullets
    call PrintDuck
    call PrintCrossHair
    call Delay50ms
    call RemoveCrossHair
    call RemoveDuck
    pop cx
    pop bx
    pop dx
    pop bp

    cmp Bullets, 0
    je Stop1Movement

    cmp Bullets, 10
    jg Stop1Movement

    jmp DuckMove1Loop

Stop1Movement:
    call DuckMoveEnd

Down1Arrow:
    jmp DownArrow1Key

Up1Arrow:
    jmp UpArrow1Key

Right1Arrow:
    jmp RightArrow1Key

Left1Arrow:
    jmp LeftArrow1Key

Exit1KeyDup:
    jmp Exit1Key

Shoot1Key:
    call ShotCheck
    jmp Key1Check

Boundary1Restriction:
    jmp DuckMove1Loop

DownArrow1Key:
    cmp CrossHairYcoordinate, 125
    jge Boundary1Restriction
    add dx, 8
    jmp DuckMove1Loop

UpArrow1Key:
    cmp CrossHairYcoordinate, 5
    jle Boundary1Restriction
    sub dx, 8
    jmp DuckMove1Loop

RightArrow1Key:
    cmp CrossHairXcoordinate, 300
    jge Boundary1Restriction
    add bp, 8
    jmp DuckMove1Loop

LeftArrow1Key:
    cmp CrossHairXcoordinate, 5
    jle Boundary1Restriction
    sub bp, 8
    jmp DuckMove1Loop

Exit1Key:
    call GotoPage7

DuckMove1 endp

DuckMove2 proc
    push ax
    push bx
    push cx
    push dx

    mov [DuckXcoordinate], 185
    mov [DuckYcoordinate], 116

    mov bx, [DuckXcoordinate]
    mov cx, [DuckYcoordinate]

    mov [OrignalDuckXcoordinate], bx
    mov [OrignalDuckYcoordinate], cx

    mov [CrossHairXcoordinate], 155
    mov [CrossHairYcoordinate], 85

    mov bp, [CrossHairXcoordinate]
    mov dx, [CrossHairYcoordinate]

DuckMove2Loop:
    cmp Direction, 1
    je Top2Right
    cmp Direction, 2
    je Bottom2Left
    cmp Direction, 3
    je Top2Left
    cmp Direction, 4
    je Straight2Left
    cmp Direction, 5
    je Top2Left2

Top2Right: 
    dec cx
    inc bx
    cmp bx, 288
    jl Key2Check
    mov Direction, 2
    jge DuckMove2Loop

Bottom2Left:
    dec bx
    add cx, 2
    cmp cx, 90
    jl Key2Check
    mov Direction, 3
    jge DuckMove2Loop

Top2Left:
    dec cx
    dec bx
    cmp bx, 215
    jg Key2Check
    mov Direction, 4
    jle DuckMove2Loop

Straight2Left:
    inc cx
    dec bx
    cmp bx, 155
    jg Key2Check
    mov Direction, 5
    jle DuckMove2Loop

Top2Left2:
    dec cx
    dec bx
    cmp cx, 0
    jg Key2Check
    mov Direction, 6
    jle Stop2Movement

Key2Check:
    mov ah, 01h
    int 16h
    jz NoKey2Press

    mov ah, 00h
    int 16h

    cmp ax, 5000h
    je DownArrow2Key

    cmp ax, 4800h
    je UpArrow2Key

    cmp ax, 4D00h
    je RightArrow2Key

    cmp ax, 4B00h
    je LeftArrow2Key

    cmp al, 32
    je Shoot2Key

    cmp al, 27
    je Exit2Key

NoKey2Press:
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx

    mov [CrossHairXcoordinate], bp
    mov [CrossHairYcoordinate], dx

    push bp
    push dx
    push bx
    push cx
    call PrintScoreBullets
    call PrintDuck
    call PrintCrossHair
    call Delay50ms
    call RemoveCrossHair
    call RemoveDuck
    pop cx
    pop bx
    pop dx
    pop bp

    cmp Bullets, 0
    je Stop2Movement

    cmp Bullets, 10
    jg Stop2Movement

    jmp DuckMove2Loop

Shoot2Key:
    call ShotCheck
    jmp Key2Check

Stop2Movement:
    call DuckMoveEnd

Boundary2Restriction:
    jmp DuckMove2Loop

DownArrow2Key:
    cmp CrossHairYcoordinate, 125
    jge Boundary2Restriction
    add dx, 8
    jmp DuckMove2Loop

UpArrow2Key:
    cmp CrossHairYcoordinate, 5
    jle Boundary2Restriction
    sub dx, 8
    jmp DuckMove2Loop

RightArrow2Key:
    cmp CrossHairXcoordinate, 300
    jge Boundary2Restriction
    add bp, 8
    jmp DuckMove2Loop

LeftArrow2Key:
    cmp CrossHairXcoordinate, 5
    jle Boundary2Restriction
    sub bp, 8
    jmp DuckMove2Loop

Exit2Key:
    call GotoPage7

DuckMove2 endp

DuckMove3 proc
    push ax
    push bx
    push cx
    push dx

    mov [DuckXcoordinate], 35
    mov [DuckYcoordinate], 116

    mov bx, [DuckXcoordinate]
    mov cx, [DuckYcoordinate]

    mov [OrignalDuckXcoordinate], bx
    mov [OrignalDuckYcoordinate], cx

    mov [CrossHairXcoordinate], 155
    mov [CrossHairYcoordinate], 85

    mov bp, [CrossHairXcoordinate]
    mov dx, [CrossHairYcoordinate]

DuckMove3Loop:
    cmp Direction, 1
    je Top3Left
    cmp Direction, 2
    je Straight3RIght
    cmp Direction, 3
    je Top3Right
    cmp Direction, 4
    je Bottom3Right
    cmp Direction, 5
    je Bottom3Left

Top3Left:
    dec bx
    dec cx
    cmp bx, 0
    jge Key3Check
    mov Direction, 2
    jl DuckMove3Loop

Straight3RIght:
    inc bx
    cmp bx, 115
    jl Key3Check
    mov Direction, 3
    jge DuckMove3Loop

Top3Right:
    inc bx
    dec cx
    cmp bx, 165
    jle Key3Check
    mov Direction, 4
    jg DuckMove3Loop

Bottom3Right:
    inc bx
    inc cx
    cmp bx, 200
    jle Key3Check
    mov Direction, 5
    jg DuckMove3Loop

Bottom3Left:
    dec bx
    inc cx
    cmp cx, 116
    jl Key3Check
    mov Direction, 6
    jge Stop3Movement

Key3Check:
    mov ah, 01h
    int 16h
    jz NoKey3Press

    mov ah, 00h
    int 16h

    cmp ax, 5000h
    je DownArrow3Key

    cmp ax, 4800h
    je UpArrow3Key

    cmp ax, 4D00h
    je RightArrow3Key

    cmp ax, 4B00h
    je LeftArrow3Key

    cmp al, 32
    je Shoot3Key

    cmp al, 27
    je Exit3Key

NoKey3Press:
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx

    mov [CrossHairXcoordinate], bp
    mov [CrossHairYcoordinate], dx

    push bp
    push dx
    push bx
    push cx
    call PrintScoreBullets
    call PrintDuck
    call PrintCrossHair
    call Delay50ms
    call RemoveCrossHair
    call RemoveDuck
    pop cx
    pop bx
    pop dx
    pop bp

    cmp Bullets, 0
    je Stop3Movement

    cmp Bullets, 10
    jg Stop3Movement

    jmp DuckMove3Loop

Shoot3Key:
    call ShotCheck
    jmp Key3Check

Stop3Movement:
    call DuckMoveEnd

Boundary3Restriction:
    jmp DuckMove3Loop

DownArrow3Key:
    cmp CrossHairYcoordinate, 125
    jge Boundary3Restriction
    add dx, 8
    jmp DuckMove3Loop

UpArrow3Key:
    cmp CrossHairYcoordinate, 5
    jle Boundary3Restriction
    sub dx, 8
    jmp DuckMove3Loop

RightArrow3Key:
    cmp CrossHairXcoordinate, 300
    jge Boundary3Restriction
    add bp, 8
    jmp DuckMove3Loop

LeftArrow3Key:
    cmp CrossHairXcoordinate, 5
    jle Boundary3Restriction
    sub bp, 8
    jmp DuckMove3Loop

Exit3Key:
    call GotoPage7

DuckMove3 endp

DuckMove4 proc
    push ax
    push bx
    push cx
    push dx

    mov [DuckXcoordinate], 135
    mov [DuckYcoordinate], 116

    mov bx, [DuckXcoordinate]
    mov cx, [DuckYcoordinate]

    mov [OrignalDuckXcoordinate], bx
    mov [OrignalDuckYcoordinate], cx

    mov [CrossHairXcoordinate], 155
    mov [CrossHairYcoordinate], 85

    mov bp, [CrossHairXcoordinate]
    mov dx, [CrossHairYcoordinate]

DuckMove4Loop:
    cmp Direction, 1
    je Top4Right
    cmp Direction, 2
    je Top4Left
    cmp Direction, 3
    je Bottom4Left
    cmp Direction, 4
    je Straight4Bottom
    cmp Direction, 5
    je Bottom4Left2

Top4Right: 
    dec cx
    inc bx
    cmp cx, 60
    jg Key4Check
    mov Direction, 2
    jle DuckMove4Loop

Top4Left:
    dec cx
    dec bx
    cmp cx, 20
    jg Key4Check
    mov Direction, 3
    jle DuckMove4Loop

Bottom4Left:
    dec bx
    inc cx
    cmp cx, 60
    jl Key4Check
    mov Direction, 4
    jge DuckMove4Loop

Straight4Bottom:
    add cx, 2
    cmp cx, 100
    jl Key4Check
    mov Direction, 5
    jge DuckMove4Loop

Bottom4Left2:
    dec cx
    dec bx
    cmp cx, 0
    jg Key4Check
    mov Direction, 6
    jle Stop4Movement

Key4Check:
    mov ah, 01h
    int 16h
    jz NoKey4Press

    mov ah, 00h
    int 16h

    cmp ax, 5000h
    je DownArrow4Key

    cmp ax, 4800h
    je UpArrow4Key

    cmp ax, 4D00h
    je RightArrow4Key

    cmp ax, 4B00h
    je LeftArrow4Key

    cmp al, 32
    je Shoot4Key

    cmp al, 27
    je Exit4Key

NoKey4Press:
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx

    mov [CrossHairXcoordinate], bp
    mov [CrossHairYcoordinate], dx

    push bp
    push dx
    push bx
    push cx
    call PrintScoreBullets
    call PrintDuck
    call PrintCrossHair
    call Delay50ms
    call RemoveCrossHair
    call RemoveDuck
    pop cx
    pop bx
    pop dx
    pop bp

    cmp Bullets, 0
    je Stop4Movement

    cmp Bullets, 10
    jg Stop4Movement

    jmp DuckMove4Loop

Shoot4Key:
    call ShotCheck
    jmp Key3Check

Stop4Movement:
    call DuckMoveEnd

Boundary4Restriction:
    jmp DuckMove4Loop

DownArrow4Key:
    cmp CrossHairYcoordinate, 125
    jge Boundary4Restriction
    add dx, 8
    jmp DuckMove4Loop

UpArrow4Key:
    cmp CrossHairYcoordinate, 5
    jle Boundary4Restriction
    sub dx, 8
    jmp DuckMove4Loop

RightArrow4Key:
    cmp CrossHairXcoordinate, 300
    jge Boundary4Restriction
    add bp, 8
    jmp DuckMove4Loop

LeftArrow4Key:
    cmp CrossHairXcoordinate, 5
    jle Boundary4Restriction
    sub bp, 8
    jmp DuckMove4Loop

Exit4Key:
    call GotoPage7

DuckMove4 endp

DuckMove5 proc
    push ax
    push bx
    push cx
    push dx

    mov [DuckXcoordinate], 225
    mov [DuckYcoordinate], 116

    mov bx, [DuckXcoordinate]
    mov cx, [DuckYcoordinate]

    mov [OrignalDuckXcoordinate], bx
    mov [OrignalDuckYcoordinate], cx

    mov [CrossHairXcoordinate], 155
    mov [CrossHairYcoordinate], 85

    mov bp, [CrossHairXcoordinate]
    mov dx, [CrossHairYcoordinate]

DuckMove5Loop:
    cmp Direction, 1
    je Top5Left
    cmp Direction, 2
    je Top5Straight
    cmp Direction, 3
    je Straight5RIght
    cmp Direction, 4
    je Bottom5Left
    cmp Direction, 5
    je Top5Left2

Top5Left: 
    dec cx
    dec bx
    cmp bx, 165
    jg Key5Check
    mov Direction, 2
    jle DuckMove5Loop

Top5Straight:
    dec cx
    cmp cx, 20
    jg Key5Check
    mov Direction, 3
    jle DuckMove5Loop

Straight5RIght:
    inc bx
    cmp bx, 200
    jl Key5Check
    mov Direction, 4
    jge DuckMove5Loop

Bottom5Left:
    dec bx
    inc cx
    cmp cx, 95
    jl Key5Check
    mov Direction, 5
    jge DuckMove5Loop

Top5Left2:
    dec cx
    dec bx
    cmp cx, 0
    jg Key5Check
    mov Direction, 6
    jle Stop5Movement

Key5Check:
    mov ah, 01h
    int 16h
    jz NoKey5Press

    mov ah, 00h
    int 16h

    cmp ax, 5000h
    je DownArrow5Key

    cmp ax, 4800h
    je UpArrow5Key

    cmp ax, 4D00h
    je RightArrow5Key

    cmp ax, 4B00h
    je LeftArrow5Key

    cmp al, 32
    je Shoot5Key

    cmp al, 27
    je Exit5Key

NoKey5Press:
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx

    mov [CrossHairXcoordinate], bp
    mov [CrossHairYcoordinate], dx

    push bp
    push dx
    push bx
    push cx
    call PrintScoreBullets
    call PrintDuck
    call PrintCrossHair
    call Delay50ms
    call RemoveCrossHair
    call RemoveDuck
    pop cx
    pop bx
    pop dx
    pop bp

    cmp Bullets, 0
    je Stop5Movement

    cmp Bullets, 10
    jg Stop5Movement

    jmp DuckMove5Loop

Shoot5Key:
    call ShotCheck
    jmp Key5Check

Stop5Movement:
    call DuckMoveEnd

Boundary5Restriction:
    jmp DuckMove5Loop

DownArrow5Key:
    cmp CrossHairYcoordinate, 125
    jge Boundary5Restriction
    add dx, 8
    jmp DuckMove5Loop

UpArrow5Key:
    cmp CrossHairYcoordinate, 5
    jle Boundary5Restriction
    sub dx, 8
    jmp DuckMove5Loop

RightArrow5Key:
    cmp CrossHairXcoordinate, 300
    jge Boundary5Restriction
    add bp, 8
    jmp DuckMove5Loop

LeftArrow5Key:
    cmp CrossHairXcoordinate, 5
    jle Boundary5Restriction
    sub bp, 8
    jmp DuckMove5Loop

Exit5Key:
    call GotoPage7

DuckMove5 endp

DoubleDuckMove1 proc
    push ax
    push bx
    push cx
    push dx
    push si
    push di

    mov [DuckXcoordinate], 155
    mov [DuckYcoordinate], 116

    mov bx, [DuckXcoordinate]
    mov cx, [DuckYcoordinate]

    mov [OrignalDuckXcoordinate], bx
    mov [OrignalDuckYcoordinate], cx

    mov [Duck1Xcoordinate], 205
    mov [Duck1Ycoordinate], 116

    mov si, [Duck1Xcoordinate]
    mov di, [Duck1Ycoordinate]

    mov [OrignalDuck1Xcoordinate], si
    mov [OrignalDuck1Ycoordinate], di

    mov [CrossHairXcoordinate], 155
    mov [CrossHairYcoordinate], 85

    mov bp, [CrossHairXcoordinate]
    mov dx, [CrossHairYcoordinate]

DoubleDuckMove1Loop:
    cmp Direction, 1
    je DoubleTop1Left
    cmp Direction, 2
    je DoubleBottom1Left
    cmp Direction, 3
    je DoubleBottom1Right
    cmp Direction, 4
    je DoubleTop1Right
    cmp Direction, 5
    je DoubleBottom1Right2
    cmp Direction, 6
    je DoubleBottom1Left2

DoubleTop1Left:
    sub bx, 2
    sub cx, 2
    sub di, 2
    cmp cx, 0
    jne DoubleKey1Check
    mov Direction, 2
    je DoubleDuckMove1Loop

DoubleBottom1Left:
    sub bx, 2
    add cx, 2
    add si, 2
    add di, 2
    cmp cx, 42
    jne DoubleKey1Check
    mov Direction, 3
    je DoubleDuckMove1Loop

DoubleBottom1Right:
    add bx, 2
    add cx, 2
    sub si, 2
    add di, 2
    cmp cx, 114
    jne DoubleKey1Check
    mov Direction, 4
    je BDoubleDuckMove1Loop

DoubleTop1Right:
    add bx, 2
    sub cx, 2
    sub si, 2
    sub di, 2
    cmp cx, 0
    jne DoubleKey1Check
    mov Direction, 5
    je BDoubleDuckMove1Loop

DoubleBottom1Right2:
    add bx, 2
    add cx, 2
    add di, 2
    cmp bx, 281
    jne DoubleKey1Check
    mov Direction, 6
    je BDoubleDuckMove1Loop

BDoubleDuckMove1Loop:
    jmp DoubleDuckMove1Loop

DoubleBottom1Left2:
    dec bx
    inc cx
    dec si 
    inc di
    cmp cx, 115
    jne DoubleKey1Check
    je DoubleStop1Movement

DoubleKey1Check:
    mov ah, 01h
    int 16h
    jz DoubleNoKey1Press

    mov ah, 00h
    int 16h

    cmp ax, 5000h
    je DoubleDown1Arrow

    cmp ax, 4800h
    je DoubleUp1Arrow

    cmp ax, 4D00h
    je DoubleRight1Arrow

    cmp ax, 4B00h
    je DoubleLeft1Arrow

    cmp al, 32
    je DoubleShoot1Key

    cmp al, 27
    je DoubleExit1KeyDup

DoubleNoKey1Press:
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx

    mov [Duck1Xcoordinate], si
    mov [Duck1Ycoordinate], di

    mov [CrossHairXcoordinate], bp
    mov [CrossHairYcoordinate], dx

    push bp
    push dx
    push bx
    push cx
    push si
    push di
    call PrintScoreBullets
    call PrintDuck
    call Print1Duck
    call PrintCrossHair
    call Delay50ms
    call RemoveCrossHair
    call RemoveDuck
    call Remove1Duck
    pop di
    pop si
    pop cx
    pop bx
    pop dx
    pop bp

    cmp Bullets, 0
    je DoubleStop1Movement

    cmp Bullets, 10
    jg DoubleStop1Movement

    jmp DoubleDuckMove1Loop

DoubleStop1Movement:
    call DoubleDuckMoveEnd

DoubleDown1Arrow:
    jmp DoubleDownArrow1Key

DoubleUp1Arrow:
    jmp DoubleUpArrow1Key

DoubleRight1Arrow:
    jmp DoubleRightArrow1Key

DoubleLeft1Arrow:
    jmp DoubleLeftArrow1Key

DoubleExit1KeyDup:
    jmp DoubleExit1Key

DoubleShoot1Key:
    call Shot1Check
    jmp DoubleKey1Check

DoubleBoundary1Restriction:
    jmp DoubleDuckMove1Loop

DoubleDownArrow1Key:
    cmp CrossHairYcoordinate, 125
    jge DoubleBoundary1Restriction
    add dx, 8
    jmp DoubleDuckMove1Loop

DoubleUpArrow1Key:
    cmp CrossHairYcoordinate, 5
    jle DoubleBoundary1Restriction
    sub dx, 8
    jmp DoubleDuckMove1Loop

DoubleRightArrow1Key:
    cmp CrossHairXcoordinate, 300
    jge DoubleBoundary1Restriction
    add bp, 8
    jmp DoubleDuckMove1Loop

DoubleLeftArrow1Key:
    cmp CrossHairXcoordinate, 5
    jle DoubleBoundary1Restriction
    sub bp, 8
    jmp DoubleDuckMove1Loop

DoubleExit1Key:
    call GotoPage7

DoubleDuckMove1 endp

DoubleDuckMove2 proc
    push ax
    push bx
    push cx
    push dx
    push si
    push di

    mov [DuckXcoordinate], 35
    mov [DuckYcoordinate], 116

    mov bx, [DuckXcoordinate]
    mov cx, [DuckYcoordinate]

    mov [OrignalDuckXcoordinate], bx
    mov [OrignalDuckYcoordinate], cx

    mov [Duck1Xcoordinate], 175
    mov [Duck1Ycoordinate], 116

    mov si, [Duck1Xcoordinate]
    mov di, [Duck1Ycoordinate]

    mov [OrignalDuck1Xcoordinate], si
    mov [OrignalDuck1Ycoordinate], di

    mov [CrossHairXcoordinate], 155
    mov [CrossHairYcoordinate], 85

    mov bp, [CrossHairXcoordinate]
    mov dx, [CrossHairYcoordinate]

DoubleDuckMove2Loop:
    cmp Direction, 1
    je DoubleTop2Left
    cmp Direction, 2
    je DoubleBottom2Left
    cmp Direction, 3
    je DoubleBottom2Right
    cmp Direction, 4
    je DoubleTop2Right
    cmp Direction, 5
    je DoubleBottom2Right2

DoubleTop2Left:
    sub bx, 2
    sub cx, 2
    add si, 2
    sub di, 1
    cmp bx, 0
    jge DoubleKey2Check
    mov Direction, 2
    je DoubleDuckMove2Loop

DoubleBottom2Left:
    add bx, 2
    sub si, 2
    sub di, 1
    cmp bx, 115
    jl DoubleKey2Check
    mov Direction, 3
    je DoubleDuckMove2Loop

DoubleBottom2Right:
    add bx, 2
    sub cx, 2
    add di, 2
    cmp bx, 165
    jle DoubleKey2Check
    mov Direction, 4
    je BDoubleDuckMove2Loop

DoubleTop2Right:
    add bx, 2
    add cx, 2
    sub si, 2
    cmp bx, 200
    jle DoubleKey2Check
    mov Direction, 5
    je BDoubleDuckMove2Loop

DoubleBottom2Right2:
    sub bx, 2
    add cx, 2
    sub si, 2
    sub di, 2
    cmp cx, 116
    jl DoubleKey2Check
    mov Direction, 6
    je DoubleStop2Movement

BDoubleDuckMove2Loop:
    jmp DoubleDuckMove2Loop

DoubleKey2Check:
    mov ah, 01h
    int 16h
    jz DoubleNoKey2Press

    mov ah, 00h
    int 16h

    cmp ax, 5000h
    je DoubleDown2Arrow

    cmp ax, 4800h
    je DoubleUp2Arrow

    cmp ax, 4D00h
    je DoubleRight2Arrow

    cmp ax, 4B00h
    je DoubleLeft2Arrow

    cmp al, 32
    je DoubleShoot2Key

    cmp al, 27
    je DoubleExit2KeyDup

DoubleNoKey2Press:
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx

    mov [Duck1Xcoordinate], si
    mov [Duck1Ycoordinate], di

    mov [CrossHairXcoordinate], bp
    mov [CrossHairYcoordinate], dx

    push bp
    push dx
    push bx
    push cx
    push si
    push di
    call PrintScoreBullets
    call PrintDuck
    call Print1Duck
    call PrintCrossHair
    call Delay50ms
    call RemoveCrossHair
    call RemoveDuck
    call Remove1Duck
    pop di
    pop si
    pop cx
    pop bx
    pop dx
    pop bp

    cmp Bullets, 0
    je DoubleStop2Movement

    cmp Bullets, 10
    jg DoubleStop2Movement

    jmp DoubleDuckMove2Loop

DoubleStop2Movement:
    call DoubleDuckMoveEnd

DoubleDown2Arrow:
    jmp DoubleDownArrow2Key

DoubleUp2Arrow:
    jmp DoubleUpArrow2Key

DoubleRight2Arrow:
    jmp DoubleRightArrow2Key

DoubleLeft2Arrow:
    jmp DoubleLeftArrow2Key

DoubleExit2KeyDup:
    jmp DoubleExit2Key

DoubleShoot2Key:
    call Shot1Check
    jmp DoubleKey2Check

DoubleBoundary2Restriction:
    jmp DoubleDuckMove2Loop

DoubleDownArrow2Key:
    cmp CrossHairYcoordinate, 125
    jge DoubleBoundary2Restriction
    add dx, 8
    jmp DoubleDuckMove2Loop

DoubleUpArrow2Key:
    cmp CrossHairYcoordinate, 5
    jle DoubleBoundary2Restriction
    sub dx, 8
    jmp DoubleDuckMove2Loop

DoubleRightArrow2Key:
    cmp CrossHairXcoordinate, 300
    jge DoubleBoundary2Restriction
    add bp, 8
    jmp DoubleDuckMove2Loop

DoubleLeftArrow2Key:
    cmp CrossHairXcoordinate, 5
    jle DoubleBoundary2Restriction
    sub bp, 8
    jmp DoubleDuckMove2Loop

DoubleExit2Key:
    call GotoPage7

DoubleDuckMove2 endp

DoubleDuckMove3 proc
    push ax
    push bx
    push cx
    push dx
    push si
    push di

    mov [DuckXcoordinate], 225
    mov [DuckYcoordinate], 116

    mov bx, [DuckXcoordinate]
    mov cx, [DuckYcoordinate]

    mov [OrignalDuckXcoordinate], bx
    mov [OrignalDuckYcoordinate], cx

    mov [Duck1Xcoordinate], 115
    mov [Duck1Ycoordinate], 116

    mov si, [Duck1Xcoordinate]
    mov di, [Duck1Ycoordinate]

    mov [OrignalDuck1Xcoordinate], si
    mov [OrignalDuck1Ycoordinate], di

    mov [CrossHairXcoordinate], 155
    mov [CrossHairYcoordinate], 85

    mov bp, [CrossHairXcoordinate]
    mov dx, [CrossHairYcoordinate]

DoubleDuckMove3Loop:
    cmp Direction, 1
    je DoubleTop3Left
    cmp Direction, 2
    je DoubleBottom3Left
    cmp Direction, 3
    je DoubleBottom3Right
    cmp Direction, 4
    je DoubleTop3Right
    cmp Direction, 5
    je DoubleBottom3Right2

DoubleTop3Left:
    sub cx, 2
    sub bx, 2
    sub di, 2
    cmp bx, 165
    jg DoubleKey3Check
    mov Direction, 2
    je DoubleDuckMove3Loop

DoubleBottom3Left:
    sub cx, 2
    sub si, 2
    sub di, 2
    cmp cx, 20
    jg DoubleKey3Check
    mov Direction, 3
    je DoubleDuckMove3Loop

DoubleBottom3Right:
    add bx, 2
    sub si, 2
    cmp bx, 200
    jl DoubleKey3Check
    mov Direction, 4
    je BDoubleDuckMove3Loop

DoubleTop3Right:
    sub bx, 2
    add cx, 2
    add si, 2
    cmp cx, 95
    jl DoubleKey3Check
    mov Direction, 5
    je BDoubleDuckMove3Loop

DoubleBottom3Right2:
    sub cx, 2
    sub bx, 2
    add di, 2
    add si, 2
    cmp cx, 0
    jg DoubleKey3Check
    mov Direction, 6
    je DoubleStop3Movement

BDoubleDuckMove3Loop:
    jmp DoubleDuckMove3Loop

DoubleKey3Check:
    mov ah, 01h
    int 16h
    jz DoubleNoKey3Press

    mov ah, 00h
    int 16h

    cmp ax, 5000h
    je DoubleDown3Arrow

    cmp ax, 4800h
    je DoubleUp3Arrow

    cmp ax, 4D00h
    je DoubleRight3Arrow

    cmp ax, 4B00h
    je DoubleLeft3Arrow

    cmp al, 32
    je DoubleShoot3Key

    cmp al, 27
    je DoubleExit3KeyDup

DoubleNoKey3Press:
    mov [DuckXcoordinate], bx
    mov [DuckYcoordinate], cx

    mov [Duck1Xcoordinate], si
    mov [Duck1Ycoordinate], di

    mov [CrossHairXcoordinate], bp
    mov [CrossHairYcoordinate], dx

    push bp
    push dx
    push bx
    push cx
    push si
    push di
    call PrintScoreBullets
    call PrintDuck
    call Print1Duck
    call PrintCrossHair
    call Delay50ms
    call RemoveCrossHair
    call RemoveDuck
    call Remove1Duck
    pop di
    pop si
    pop cx
    pop bx
    pop dx
    pop bp

    cmp Bullets, 0
    je DoubleStop3Movement

    cmp Bullets, 10
    jg DoubleStop3Movement

    jmp DoubleDuckMove3Loop

DoubleStop3Movement:
    call DoubleDuckMoveEnd

DoubleDown3Arrow:
    jmp DoubleDownArrow3Key

DoubleUp3Arrow:
    jmp DoubleUpArrow3Key

DoubleRight3Arrow:
    jmp DoubleRightArrow3Key

DoubleLeft3Arrow:
    jmp DoubleLeftArrow3Key

DoubleExit3KeyDup:
    jmp DoubleExit3Key

DoubleShoot3Key:
    call Shot1Check
    jmp DoubleKey3Check

DoubleBoundary3Restriction:
    jmp DoubleDuckMove3Loop

DoubleDownArrow3Key:
    cmp CrossHairYcoordinate, 125
    jge DoubleBoundary3Restriction
    add dx, 8
    jmp DoubleDuckMove3Loop

DoubleUpArrow3Key:
    cmp CrossHairYcoordinate, 5
    jle DoubleBoundary3Restriction
    sub dx, 8
    jmp DoubleDuckMove3Loop

DoubleRightArrow3Key:
    cmp CrossHairXcoordinate, 300
    jge DoubleBoundary3Restriction
    add bp, 8
    jmp DoubleDuckMove3Loop

DoubleLeftArrow3Key:
    cmp CrossHairXcoordinate, 5
    jle DoubleBoundary3Restriction
    sub bp, 8
    jmp DoubleDuckMove3Loop

DoubleExit3Key:
    call GotoPage7

DoubleDuckMove3 endp

DuckAlgo proc
    mov Shot, 0
    mov Bullets, 5
    mov ShotDead, 0
    mov Algorithm, 0
    mov CheckFlag, 0
    call GenerateRandom  

    cmp Algorithm, 0
    je Movement1
    cmp Algorithm, 1
    je Movement2
    cmp Algorithm, 2
    je Movement3
    cmp Algorithm, 3
    je Movement4
    cmp Algorithm, 4
    je Movement5

    ret

Movement1:
    call DuckMove1

Movement2:
    call DuckMove2

Movement3:
    call DuckMove3

Movement4:
    call DuckMove4

Movement5:
    call DuckMove5

    ret
DuckAlgo endp

Duck1Algo proc
    mov Shot, 0
    mov Bullets, 2
    mov ShotDead, 0
    mov Algorithm, 0
    mov CheckFlag, 0
    call Generate1Random  

    cmp Algorithm, 0
    je DoubleMovement1
    cmp Algorithm, 1
    je DoubleMovement2
    cmp Algorithm, 2
    je DoubleMovement3

DoubleMovement1:
    call DoubleDuckMove1

DoubleMovement2:
    call DoubleDuckMove2

DoubleMovement3:
    call DoubleDuckMove3

    ret
Duck1Algo endp

GameLoop proc near
    call DuckAlgo

GameLoop endp

Game1Loop proc near
    call Duck1Algo

Game1Loop endp

GenerateRandom proc
    push ax
    push bx
    push cx
    push dx

    mov ah, 2Ch
    int 21h
    mov ah, 0       
    mov al, dl      
    mov bl, 5
    div bl          
    mov Algorithm, ah

    pop dx
    pop cx
    pop bx
    pop ax
    ret
GenerateRandom endp

Generate1Random proc
    push ax
    push bx
    push cx
    push dx

    mov ah, 2Ch
    int 21h
    mov ah, 0       
    mov al, dl      
    mov bl, 3
    div bl          
    mov Algorithm, ah

    pop dx
    pop cx
    pop bx
    pop ax
    ret
Generate1Random endp

Delay50ms proc near 
    push ax
    push bx
    push cx
    push dx
    push bp

    mov cx, 35     

Delay50msLoop1: 
    push cx             
    mov cx, 2500 

Delay50msLoop2: 
    loop Delay50msLoop2  
    pop cx              
    loop Delay50msLoop1     

    pop bp
    pop dx
    pop cx
    pop bx
    pop ax
    ret 
Delay50ms endp

Delay2Sec proc near 
    mov cx, 55     

Delay2SecLoop1: 
    push cx             
    mov cx, 62500 

Delay2SecLoop2: 
    loop Delay2SecLoop2  
    pop cx              
    loop Delay2SecLoop1     
    ret 
Delay2Sec endp

Page2Menu proc
    cmp choice, 1
    je Page2to3
    cmp choice, 2
    je Page2to4
    cmp choice, 3
    je Page2to1
    ret

Page2to3:
    jmp GotoPage3

Page2to4:
    jmp GotoPage4

Page2to1:
    jmp GotoPage1

Page2Menu endp

Page3Menu proc
    cmp choice, 1
    je Page3to5
    cmp choice, 2
    je Page3to2
    cmp choice, 3
    je Page3to1
    ret

Page3to5:
    jmp GotoPage5

Page3to2:
    jmp GotoPage2

Page3to1:
    jmp GotoPage1

Page3Menu endp

Page4Menu proc
    cmp choice, 1
    je Page4to6
    cmp choice, 2
    je Page4to2
    cmp choice, 3
    je Page4to1
    ret

Page4to6:
    jmp GotoPage6

Page4to2:
    jmp GotoPage2

Page4to1:
    jmp GotoPage1

Page4Menu endp

ClearScreen proc near 
    mov ax, 0600h 
    mov bh, 07h
    mov cx, 0
    mov dx, 184fh
    int 10h 
    ret 
ClearScreen endp

SetBackgroundBlack proc near 
    mov ah, 06h
    mov al, 0
    mov bh, 00h
    mov ch, 0 
    mov cl, 0
    mov dh, 24
    mov dl, 79
    int 10h
    ret 
SetBackgroundBlack endp

SetBackgroundGame proc
    push ax
    push bx
    push cx
    push dx

    mov cx, 0
    mov dx, 0
    mov bh, 0
    mov al, 09h

FillSky:
    mov ah, 0Ch
    int 10h
    inc cx
    cmp cx, 320
    jl FillSkyMore
    inc dx
    xor cx, cx
    cmp dx, 146
    jl FillSky

    mov cx, 0
    mov dx, 146
    mov bh, 0
    mov al, 01h

FillBoundary:
    mov ah, 0Ch
    int 10h
    inc cx
    cmp cx, 320
    jl FillBoundaryMore
    inc dx
    xor cx, cx
    cmp dx, 147
    jl FillBoundary

    mov cx, 0
    mov dx, 147
    mov bh, 0
    mov al, 02h

    FillGrass:
    mov ah, 0Ch
    int 10h
    inc cx
    cmp cx, 320
    jl FillGrassMore
    inc dx
    xor cx, cx
    cmp dx, 191
    jl FillGrass

    pop dx
    pop cx
    pop bx
    pop ax

    ret
FillGrassMore:
    jmp FillGrass

FillBoundaryMore:
    jmp FillBoundary

FillSkyMore:
    jmp FillSky

SetBackgroundGame endp

PrintScoreBullets proc
    push ax
    push bx
    push cx
    push dx

    mov cx, 0
    mov dx, 192
    mov bh, 0
    mov al, 10h

    FillEmpty:
    mov ah, 0Ch
    int 10h
    inc cx
    cmp cx, 320
    jl FillEmptyMore
    inc dx
    xor cx, cx
    cmp dx, 204
    jl FillEmpty

    mov dh, 24
    mov dl, 2
    mov ah, 02h
    int 10h
    mov bh, 0
    mov bl, 04h
    mov si, offset scoreString
    call PrintString

    call PrintScore

    mov dh, 24
    mov dl, 29
    mov ah, 02h
    int 10h
    mov bh, 0
    mov bl, 04h
    mov si, offset bulletsString
    call PrintString

    call PrintBullets

    pop dx
    pop cx
    pop bx
    pop ax

    ret
FillEmptyMore:
    jmp FillEmpty

PrintScoreBullets endp

ScreenPartition proc near
    mov cx, 0
    mov dx, 51
    mov bh, 0
    mov al, 03h

Partition1:
    mov ah, 0Ch
    int 10h
    inc cx
    cmp cx, 320
    jl Partition1
    ret
ScreenPartition endp

PrintTitleInstructions proc near
    mov bh, 0
    mov bl, 3

    mov dh, 1      
    mov dl, 0      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 03h    
    mov si, offset duckString
    call PrintString
    
    mov dh, 6      
    mov dl, 10     
    mov ah, 02h    
    int 10h
    mov bh, 0
    mov bl, 03h
    mov si, offset shootString
    call PrintString

    call ScreenPartition

    mov dh, 15      
    mov dl, 8      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 04h    
    mov si, offset welcomeGameString
    call PrintString
  
    mov dh, 17    
    mov dl, 9      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset arrowKeysString
    call PrintString

    mov dh, 19      
    mov dl, 10      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset pressSpaceString
    call PrintString

    mov dh, 21      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset pressEscString
    call PrintString

    ret
PrintTitleInstructions endp

PrintTitleP1 proc near
    mov bh, 0
    mov bl, 3

    mov dh, 1      
    mov dl, 0      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 03h    
    mov si, offset duckString
    call PrintString
    
    mov dh, 6      
    mov dl, 10     
    mov ah, 02h    
    int 10h
    mov bh, 0
    mov bl, 03h
    mov si, offset shootString
    call PrintString

    call ScreenPartition

    mov dh, 16      
    mov dl, 8      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset welcomeString
    call PrintString

    mov dh, 23      
    mov dl, 12      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 0Ah    
    mov si, offset topScoreString
    call PrintString

    call PrintTopScore

    mov dh, 18
    mov dl, 8
    mov ah, 02h
    int 10h
    mov bh, 0
    mov bl, 04h
    mov si, offset inputString
    call PrintString

    mov bh, 0
    mov bl, 04h 
    mov si, offset inputBuffer
    call ReadString

    ret
PrintTitleP1 endp

PrintTitleP2 proc near
    mov bh, 0
    mov bl, 3

    mov dh, 1      
    mov dl, 0      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 03h    
    mov si, offset duckString
    call PrintString
    
    mov dh, 6      
    mov dl, 10     
    mov ah, 02h    
    int 10h
    mov bh, 0
    mov bl, 03h
    mov si, offset shootString
    call PrintString

    call ScreenPartition

    mov dh, 14
    mov dl, 10
    mov ah, 02h
    int 10h
    mov bh, 0
    mov bl, 04h
    mov si, offset playerNameString
    call PrintString

    add dl, 13
    mov ah, 02h
    int 10h

    mov si, offset inputBuffer
    call PrintString

    mov dh, 16      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh
    mov si, offset gameAString
    call PrintString

    mov dh, 18      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset gameBString
    call PrintString

    mov dh, 20      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset backString
    call PrintString

    mov dh, 23      
    mov dl, 12      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 0Ah    
    mov si, offset topScoreString
    call PrintString

    call PrintTopScore

    mov bh, 0
    mov bl, 04h 
    mov si, offset choice
    call ReadInteger
    call Page2Menu

    ret
PrintTitleP2 endp

PrintTitleP3 proc near
    mov bh, 0
    mov bl, 3

    mov dh, 14      
    mov dl, 10      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 04h    
    mov si, offset page3String
    call PrintString

    mov dh, 1      
    mov dl, 0      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 03h    
    mov si, offset duckString
    call PrintString
    
    mov dh, 6      
    mov dl, 10     
    mov ah, 02h    
    int 10h
    mov bh, 0
    mov bl, 03h
    mov si, offset shootString
    call PrintString

    call ScreenPartition

    mov dh, 16      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh
    mov si, offset startString
    call PrintString

    mov dh, 18      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset modeSelectString
    call PrintString

    mov dh, 20      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset backString
    call PrintString

    call keyboardConnection

    mov bh, 0
    mov bl, 04h 
    mov si, offset choice
    call ReadInteger
    call Page3Menu

    ret
PrintTitleP3 endp

PrintTitleP4 proc near
    mov bh, 0
    mov bl, 3

    mov dh, 14      
    mov dl, 10      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 04h    
    mov si, offset page4String
    call PrintString

    mov dh, 1      
    mov dl, 0      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 03h    
    mov si, offset duckString
    call PrintString
    
    mov dh, 6      
    mov dl, 10     
    mov ah, 02h    
    int 10h
    mov bh, 0
    mov bl, 03h
    mov si, offset shootString
    call PrintString

    call ScreenPartition

    mov dh, 16      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh
    mov si, offset startString
    call PrintString

    mov dh, 18      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset modeSelectString
    call PrintString

    mov dh, 20      
    mov dl, 11      
    mov ah, 02h    
    int 10h
    mov bh, 0 
    mov bl, 1Fh    
    mov si, offset backString
    call PrintString

    call keyboardConnection

    mov bh, 0
    mov bl, 04h 
    mov si, offset choice
    call ReadInteger
    call Page4Menu

    ret
PrintTitleP4 endp

PrintTitleP5 proc near
    call GameLoop   

    ret
PrintTitleP5 endp

PrintTitleP6 proc near
    call Game1Loop 

    ret
PrintTitleP6 endp

PrintTitleP7 proc near
    call PrintGameOver

    mov dh, 16
    mov dl, 13
    mov ah, 02h
    int 10h
    mov bh, 0
    mov bl, 04h
    mov si, offset yourScoreString
    call PrintString

    call PrintScore

    ret
PrintTitleP7 endp

GotoPage1 proc near
    call ClearScreen
    call SetBackgroundBlack
    call PrintTitleP1

    jmp GotoPage2

GotoPage1 endp
    
GotoPage2 proc near
    call ClearScreen
    call SetBackgroundBlack
    call PrintTitleP2
    ret
GotoPage2 endp

GotoPage3 proc near
    call ClearScreen
    call SetBackgroundBlack
    call PrintTitleP3
    ret
GotoPage3 endp

GotoPage4 proc near
    call ClearScreen
    call SetBackgroundBlack
    call PrintTitleP4
    ret
GotoPage4 endp

GotoPage5 proc near
   call ClearScreen
   call SetBackgroundBlack
   call PrintTitleInstructions
   call Delay2Sec
   call Delay2Sec   
   call SetBackgroundGame
   call PrintGameRound1   
   call Delay2Sec
   call Delay2Sec
   call SetBackgroundGame
   call PrintTitleP5
    ret
GotoPage5 endp

GotoPage6 proc near
   call ClearScreen
   call SetBackgroundBlack
   call PrintTitleInstructions
   call Delay2Sec
   call Delay2Sec   
   call SetBackgroundGame
   call PrintGameRound1   
   call Delay2Sec
   call Delay2Sec
   call SetBackgroundGame
   call PrintTitleP6
    ret
GotoPage6 endp

GotoPage7 proc near
    call SetBackgroundBlack
    call PrintTitleP7
    call Delay2Sec
    call Delay2Sec 

    call GotoPage1
    
    ret
GotoPage7 endp

Main proc
    mov ax, @data
    mov ds, ax

    mov ax, 0013h
    int 10h
        
    call GotoPage1

    mov ah, 0
    int 16h

    mov ax, 0003h
    int 10h

    mov ah, 4Ch
    int 21h
Main endp

end main
