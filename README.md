# A5 A80V3, 50 83L0W - sunken treasure

I have found pretty interesting treasure hunt (crypto puzzle) on reddit [[1]]( https://www.reddit.com/r/bitcoinpuzzles/comments/p9dhjv/currently_over_us3100_in_this_puzzle/). Called "As above, so below". 
The author "ncodemus" left **0.0617 BTC and 0.061 ETH** (~ 1800$ ) on ethereum address [0xf91A8DcE13AD25E2c256235852F0E7220De2f3fe](https://etherscan.io/address/0xf91A8DcE13AD25E2c256235852F0E7220De2f3fe) for the lucky solver of his puzzle. He is also expected to sell few NFTs [[3]](https://opensea.io/assets/ethereum/0x9b54e03cb137e4157029e915fa00d76830251072/3) with first hint/clue for his puzzle on OpenSea with 0% author taxation meaning all the money from sold NFTs planned to be gathered on prize address. Probably a few people recevied that NFT buy i have no information about that. 

**The only key for the puzzle i have is the large (5701 x 5701 pixels) png image** [[4]](https://ipfs.io/ipfs/QmUVA5tq1qrUyQc6mLXUfcL5euw4tm3CXrVky2Jj4AJmbu/nft.png). It is too large for me to upload it on github so i can only refer the place i have downloaded it.

Attaching **below the JPG** formed from the [[PNG]](https://ipfs.io/ipfs/QmUVA5tq1qrUyQc6mLXUfcL5euw4tm3CXrVky2Jj4AJmbu/nft.png) image - **BEWARE**, in your work **you should use the original PNG** image cause the JPG have distortions.
![AsAbove_SoBelow puzzle](https://github.com/HomelessPhD/AsAbove_SoBelow/blob/59935c839bd73cb65904afa5d3c8c0351dedab55/pics/nft.jpg)

```
    From OpenSea:
    
    By ncodemus
calling all polymaths...

hidden among all the easter-eggs, memes, codes, hidden messages, historical tidbits, symbols, 
cryptocurrency lore, and nods to famous puzzle artists (pip, coin artist, etc.) and 
internet mysteries (cicada 3301, ascent, etc.), is a puzzle with a money prize at 0xf91A8DcE13AD25E2c256235852F0E7220De2f3fe

this prize will grow as editions are sold.

starting from step one, this treasure will take you through many steps and websites, 
and to many different hidden wonders in the image itself before you have all the info 
necessary to find the private key.

a knowledge of modern cryptography and programming is not necessary, but a love of 
knowledge and learning probably is. As well, a photo editing program of some kind 
will be helpful. For those without access to adobe photoshop, "gimp" is a powerful 
open source photo editor.

buyers of this nft will get learn which of the many hidden wonders is the actual 
first step of the hunt.

good luck to all, n.
```    

```
    From Reddit:
    
    1] Someone asked "the phoenix is a fairy chess piece that moves like a wazir or a 
    bishop. the phoenix is represented by an inverted knight and is given the symbol 
    Washington. Does this have something to do with solving the puzzle?". 
        And author replied: "the puzzle is built like a treasure hunt with cryptic clues. 
    so, if that gets you to a new step, then you may be on to something. the path reveals 
    itself -- does your idea lead you to something new?".
    
    2] Someone asked "Picture of a set of keys on the lower half of the moon with what 
    looks like an obfusicated qr code using the craters.". 
        Author responded: "you are looking for the private key to a crypto wallet.". 
    Then other guy reasked: "Private key or seed phrase ?". 
        And author responded in interesting manner: "... yes. ;-)".
    
    3] There is an nft that will tell you the starting point... 
    https://opensea.io/assets/0x9b54e03cb137e4157029e915fa00d76830251072/3

    4] It is now worth over US$4k. and as far as I know, no-one has even found step one.
    Anyone who has found step one, mail me at ncodemus at ncodemus dot com and let me 
    know what you have figured out.
    
    5] Just to let everyone know, i will not be confirming or denying any "first steps" in here. 
    i have nfts that tell you the first step, and besides finding and following the treasure
    hunt to it's completion -- therefore knowing you found the first step correctly 
    (and there are many, many more red herrings/wild goose-chases than have been found yet),
    there isn't another way to know if you found the first step or not besides the nft. good luck!

```    

## General ideas about this puzzle

Well, this puzzle seems to be complicated: there are too much elements in it that overwhelming and fuzzing the solver (lots of numbers, letters, encodings, links to memes or cultural "objects" like refering to the Emerald Tablet etc.), the author stated that solution is a long jorney with multiple stepps that will require reusage of different puzzle elements, people tried to solve it over several years with no a sign of success (just remind here that there are multiple stepps and ppl struggled to reach the first one).

Puzzle is an interesting competion for people like me who loves solving mystery things and yet it will drag too much time to be profitable for treasure hunters.

Below i will list some general interesting points of the puzzle i think should be mentioned:

## Blue dots on the corner of the image

![Blue Dots](https://github.com/HomelessPhD/AsAbove_SoBelow/blob/2f8035f0ba68b3323abc1cf2d604a0f53020efe0/pics/nft_reduced_blueDots.jpg)

There are blue dots on the corner of the image - groupped by three or one dot separated by some space. At first i guessed it is a Morse code where three dots denoting "-" and one dot is simply ".". I have composed MATLAB (octave) script to precisely decompose it form picture going clockwise starting from upper left corner (the code attached here in MATLAB folder - MorseExtract.m). But found out that in Morse it makes no sense:
```
    Morse code:
"- ...- .- - - ..- .- - - - ..- .- - . - ...- - .. - - .- - - - - - ..- .- - . - ...- - .. - - .- - - - - - ..- - ..- - ..- .- - . - ..- ...- - ..- - .- "

    Translation:
"TVATTUATTTUATETVTITTATTTTTUATETVTITTATTTTTUTUTUATETUVTUTA"
```

Instead, treating it as binary code i have found that there is simple messge repeated on each corner:
```
    Binary code:
01110100 01101000 01101001 01110011 00100000 01101001 01110011 00100000 01100110 01101001 01101110 0110010
    Translation:
"this is fin2" 
```

**The popular meme - "This is fine" OR meaning that it is actually important key - "fin 2".**

## Pixels stream on the right corner of the image - on width(x) = 5326 and height(y) from 375 to the (end-375): Morse code.

![MORSE](https://github.com/HomelessPhD/AsAbove_SoBelow/blob/7b180d08d7f674741845a2e84c1df7f1d6380485/pics/nft_reduced_morse_right.jpg)

Inspectin the picture more in order to find new binary stream or MORSE codes (to utilize the approach i used earlier) i have found strange pixels at x = 5326. Using the MATLAB code (MorseExtract2.m - that is attached in MATLAB folder) i have found out it likely to be the Morse code:

```
    Morse code:
"- .... . -- --- --- -. --. --- -.. .-- . -. - - --- -- . . - - .... . ... ..- -. --. --- -.. .. - - .... . -- --- --- -. -- --- -.. ... -.. --- -- .- .. - -.-- --- ..- ... . . - .... . -.-. .-. --- ... . ... - - .... . --- --. .- -- . .-- .- ... .- -.. --- ..- - ..--- -- --- - - .... ... .- - -.. .---- -... ....- -.- -- .- .--. .- .-. - .- -. -.. - .... . .--. .- .. -- . --- . .- .-. -. .. --. .. ... ... ..- -- .. ... -- . -.-- - .... --- ..- --. .... --- - -.-. . ..- --- .-.. .-.. --- .-- . -.. -.. -.-- .- ..- .- -- --- ..- ... -.- .. -. -- -. --- .-- .-- . .- . -... --- - .... .--. .- .-- - ... .. -. .- ..- .-. --- --. . -. -- . .-.. . . -.-- --- ..- .-. .-.. ..-. .. - -.. - .... . ... .. - . .-- .... . .- . - .... . -- --- --- -. --. --- -.. .-- . -. - .- -. -. .... .. -. - - .... . -.- .. - --. ... .. ... .- -.-. --- -. . -. .- -- ."
    
    Translation:
"THEMOONGODWENTTOMEETTHESUNGODITTHEMOONMODSDOMAITYOUSEETHECROSESTTHEOGAMEWASADOUT2MOTTHSATD1B4KMAPARTANDTHEPAIMEOEARNIGISSUMISMEYTHOUGHOTCEUOLLOWEDDYAUAMOUSKINMNOWWEAEBOTHPAWTSINAUROGENMELEEYOURLFITDTHESITEWHEAETHEMOONGODWENTANNHINTTHEKITGSISACONENAME"
```

There are some words in this string and yet a large part of the string not forming an English word. It could be either some cypher or not a word (link to the site for example in base64 encoding).

```
THE MOON GOD WENT TO MEET THE SUN GOD 
IT THE MOON MODSDOMAIT
YOU SEE THE CROSES 
T THE O GAME WAS ADOUT 2 MOTTHSATD1B4K
MAP ART AND THE PAIMEOEARNIG
IS SUM IS ME 
YTHOUGHOTCEU OLLOWED DYAUAMOUSKINMNOWWEAEBOTHPAWTSINAUROGEN MELEE YOUR LFITD
THE SITE WHEAE
THE MOON GOD WENT 
ANN HINT THE KITGS IS A CONE NAME
```

Some letters in this message could be messed - require to swap them like the word "ADOUT" could require to swap the letter "D" to "B" to form the word "ABOUT", and this "B" could be found in "MOTTHSATD1B4K" or "YTHOUGHOTCEUOLLOWEDDYAUAMOUSKINMNOWWEAEBOTHPAWTSINAUROGENMELEEYOURLFITD" words (or strings). Thats just an assumption

```
THE MOON GOD WENT TO MEET THE SUN GOD IN THE MOON GODS DOMAIN

YOU SEE THE CROSES T 
THE 1 GAME WAS ABOUT 2 MOTTHSOTTOU 4G MAP ART AND THE PAIMEOE ART
IM IS SUM IS ME Y 
THOUGH ONCE U ALLOWED NYAUAMOU SKIN MTOWWEAEDOTHPAWTS IT A BROKEN MELEE YOU ALFITD

THE SITE WHERE THE MOON GOD WENT AND HINT THE KINGS IS A CODE NAME
```

## Mermaids

![mermaids](https://github.com/HomelessPhD/AsAbove_SoBelow/blob/95d6718b637c00c185d6afe865832c230917e5ed/pics/nft_reduced_mermaids.jpg)

There are 5 mermaids on the image with the same text coming from them: "it lives and reigns and conquers the world"

According to "The legend of Thessalonike" [[5]](https://en.wikipedia.org/wiki/Thessalonike_of_Macedon):

```...
To the sailors who encounter her, she always poses the same question: "Is king Alexander alive?" 
(Greek: Ζει ο βασιλιάς Αλέξανδρος;), to which the correct answer would be "He lives and reigns and 
conquers the world" (Greek: Ζει και βασιλεύει, και τον κόσμο κυριεύει!). Given this answer, 
she would allow the ship and her crew to sail safely away in calm seas. Any other answer would 
transform her into the raging Gorgon, bent on sending the ship and every sailor onboard to the 
bottom of the sea."
```

Here we could assume that original "He" was changed to "It" to hint something. For example, the "it" or "he"
could be part of the private key, or this phrase talking about bitcoin?!

Another assumption is that originial question could be important: "Is king Alexander alive?".
"Alexander" could be a key for some else puzzle step.

# Stars

There are 11 constellations on the upper part of the image - most have a digit in the main star, except the lowest that has "B" letter

![stars](https://github.com/HomelessPhD/AsAbove_SoBelow/blob/5a3a4dfce6264f839353f16c4dfe429b02df9aa6/pics/nft_reduced_stars.jpg)

# Kanye Quest 3030 reference
![Kanye Quest 3030 reference](https://github.com/HomelessPhD/AsAbove_SoBelow/blob/880ab26816c9d84b25ae56b25ac81b5a240844ee/pics/nft_reduced_KannyQuest3030.jpg)

The text faded by clouds is the reference to "Kanye Quest 3030" video game [[6]](https://en.wikipedia.org/wiki/Kanye_Quest_3030), [[6']](https://twinfinite.net/pc/this-insane-kanye-quest-3030-conspiracy-theory-is-actually-real/):

```
....
You have proven your worth once again. You have ascended. However, further ascension is always possible.
If you do not wish to ascend further, your journey ends here, so please close this program by pressing 
ALT-F4 or selecting the NO option above. By selecting the YES option, you agree to participate further 
and you grant us permission to interact with your possessions. Would you like to participate?

    If you choose NO, you get sent to the title screen. If you choose YES, it shows this:

Over the following two week time period, we will interact with you and your possessions in several ways. 
Keep an eye out, as some of these ways may be subtle. Others may not be. We may attempt to contact you 
directly. If we do this, we will attempt to notify you of our prescence using a key-word. If you still 
consent to participation, please select the YES option above. Do you wish to participate?
....
```

## P.S.

Thank you for spending time on my notes, i hope it was not totally useless and you've found something interesting. 

Any ideas\questions or propositions you may send to generalizatorSUB@gmail.com - also look at my [[twitter]](https://twitter.com/miningpredict) @MiningPredict.

-------------------------------------------------------------------------
### References:

[1] Original post in reddit - https://www.reddit.com/r/bitcoinpuzzles/comments/p9dhjv/currently_over_us3100_in_this_puzzle/

[2] Puzzle prize (ETH address) - https://etherscan.io/address/0xf91A8DcE13AD25E2c256235852F0E7220De2f3fe

[3] OpenSea puzzle NFT (some original puzzle author comments are there) - https://opensea.io/assets/ethereum/0x9b54e03cb137e4157029e915fa00d76830251072/3

[4] Puzzle image (too big to be uploaded to github) - https://ipfs.io/ipfs/QmUVA5tq1qrUyQc6mLXUfcL5euw4tm3CXrVky2Jj4AJmbu/nft.png

[5] The legend of Thessalonike - https://en.wikipedia.org/wiki/Thessalonike_of_Macedon

[6] Kanye Quest 3030 - https://en.wikipedia.org/wiki/Kanye_Quest_3030
[6'] Kanye Conspiracy Theory - https://twinfinite.net/pc/this-insane-kanye-quest-3030-conspiracy-theory-is-actually-real/



-------------------------------------------------------------------------
### Support
I am poor Ukrainian student that will really appreciate any donations.
I have no home (flat\appartment), live in the dorm (refugee shelter).
 
P.S. Successfully evacuated from occupied regions of Ukraine.

**BTC**:  `1QKjnfVsTT1KXzHgAFUbTy3QbJ2Hgy96WU`

**LTC**:  `LNQopZ7ozXPQtWpCPrS4mGGYRaE8iaj3BE`

**DOGE**: `DQvfzvVyb4tnBpkd3DRUfbwJjgPSjadDTb`

**AR**: `0UM6uoLrrnxXuYpHMBDAv-6txNTMdaEkR2m_bP_1HyE`
(have never used Arweave wallet)
