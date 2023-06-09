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
01110100 01101000 01101001 01110011 00100000 01101001 01110011 00100000 01100110 01101001 01101110 01100101
    Translation:
"this is fine" 
```

**The popular meme - "This is fine" OR meaning that it is actually important key - "fine".**

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
(it could be so called [NULL cypher](https://en.wikipedia.org/wiki/Null_cipher) )

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
(TO DO: try to re-arrange letters in the message to get sentences or at least make all words sane)

Some reshape adjustment proposed by AI (chat GPT) based on my work:
```
THE MOON GOD WENT TO MEET THE SUN GOD IN THE MOON GOD'S DOMAIN.

YOU SEE THE CROSSES. THE GAME WAS ABOUT 2 MONTHS. TOOK OUT 4 MAPS AND THE PAINTING ART.
IS IT MY SUM? IS ME? THOUGH ONCE YOU ALLOWED MAYHEM, IT'S A BROKEN MELEE. YOU ALIFT.

THE SITE WHERE THE MOON GOD WENT AND HINTED THE KINGS IS A CODE NAME
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

## Stars

![stars](https://github.com/HomelessPhD/AsAbove_SoBelow/blob/5a3a4dfce6264f839353f16c4dfe429b02df9aa6/pics/nft_reduced_stars.jpg)

There are 11 constellations on the upper part of the image - most have a digit in the main star, except the lowest that has "B" letter.

I got the next list of constellations (rely on my poor astronomy knowledge and internet sources [[8]](https://stardate.org/nightsky/constellations), [[8']](https://starwalk.space/en/news/zodiac-constellations)

```
0) Pisces,                Star: Tau Piscium (τ Piscium)
1) Aquarius (??),         Star: Iota Aquarii (?)
2) Aries (??),            Star: Hamal    (α Arietis)
3) Taurus (or the Bull),  Star: Lambda Tauri ( λ Taur)
4) Libra,                 Star: Zubeneschamali (β Librae)
5) Capricornus,           Star: Nashira  (γ Capricorni) OR Iota Capricorni ?
6) Virgo,                 Star: Zavijah  (β Virginis)
7) Sagittarius,           Star: Ascella  (ζ Sagittarii)
8) Gemini (or Twins),     Star: Pollux   (β Gem)
9) Cancer (or the Crab),  Star: Acubens  (α Cancri)
B) Leo,                   Star: Denebola (β Leonis)

```

(TO DO: get the names of each constellation AND the stars marked on the image by digit or letter)

**ALSO** should be noticed - the image as whole, as far as i understood, painted the view of the MOON form the earth perspective 
while the moon hide the earth in its shadow (yeah - strange that moon is brigth cause in that case it shoulb be dark) - SOLAR ECLIPSE ?!. 
The constellation geometry and orientation could denote something including the date (or day of the year).

## Kanye Quest 3030 reference
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

##  Green chars
![Green chars on Bitcoin logo](https://github.com/HomelessPhD/AsAbove_SoBelow/blob/0e6f4967fa4b4a06ed6a6447d820e59c1e9a9ba2/pics/nft_reduced_greenChars.jpg)

There are green characters (letters and numbers) on the bitcoin logo.

```
531en35ay51mju5t9a21n9atan0th3r3a5t3r399d0y0u0ur3a11yth1nk1t590nnab3that3a5y
```

That could be split into words as following
```
531en3 5ay5 1m ju5t 9a21n9 at an0th3r 3a5t3r 399 d0 y0u 0u r3a11y th1nk 1t5 90nna b3 that 3a5y

or

Selene says im just gazing at another easter egg do you ou really think its gonna be that easy
```

The next digit to letter transformation used (could be the key)
```
5 3 1 3 5 5 1 5 9 2 1 9 0 3 3 5 3 3 9 9 0 0 0 3 1 1 1 1 5 9 0 3 3 5
| | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | 
S e l e s s i s g z i g o e e s e e g g o o o e l l i i s g o e e s 

```


## Moon River lyrics
![Moon River lyrics at the bottom left](https://github.com/HomelessPhD/AsAbove_SoBelow/blob/dd91f613bc76d03dad09f876213bf7aed5fd4431/pics/nft_reduced_MoonRiver.jpg)

There is song text on the bottom left [[7]](https://genius.com/Andy-williams-moon-river-lyrics):

```
Moon river, wider than a mile
I'm crossing you in style some day
You dream maker, you heart breaker
Wherever you're going, I'm going your way

Two drifters, off to see the world
There's such a lot of world to see
We're after the same rainbow's end,
Waiting 'round the bend
My huckleberry friend
Moon river and me

Oh, you dream maker, you heart breaker
Wherever you're going, I'm going your way.

We're after that same rainbow's end
Waiting round the bend
My huckleberry friend
Moon river and me
```

 ## Icebergs
 ![Icebergs data]( https://github.com/HomelessPhD/AsAbove_SoBelow/blob/7bb4a4fce0b85469b71012b6da9ae1d56915d3fd/pics/nft_reduced_icebergs.jpg)
    
 There are three words (or strings) written and distorted on icebergs (red circles). Someone guessed two of three icebergs strings:
 ```
 ALBERTI and FINNEY
 ```
 
 ALBERTI could be a reference to ["Alberti cipher"](https://en.wikipedia.org/wiki/Alberti_cipher)
 

 Another interesting thing is strange noise between the icebergs - there is a 6-pixel strip between the icebergs (yellow circle) that looks
 different from its surrounding: a strange noice like in least-bit steganography.
    
 (TO DO: check that area for stego AND retrive the third iceberg string)


## Edge detection and text sharpening - reveal some interesting things
![Edge detection]( https://github.com/HomelessPhD/AsAbove_SoBelow/blob/4875525971bff7b8a440a6a61a0634d958ac3a05/pics/nft_edges.jpg )

Applying the edge detection filter some elements noticed earlier became more visible.

The strip of the pixels between icebergs that i thought been a bit-stego now seems something more abstract, try to decipher what is written there
![Iceberg strip]( https://github.com/HomelessPhD/AsAbove_SoBelow/blob/d130b73bd548b852fffc185602b491963f0f81ca/pics/nft_edges_iceberg_strip.png )

(TO DO: transcript the strip)

Also, removing the noise helps to read the text in the image. Below is the JPG formed by noise reduction filter. Text on the moon and in the water
now clearly readable 
![Edge detection]( https://github.com/HomelessPhD/AsAbove_SoBelow/blob/1af8d80a081fc210bfc6445dfed3a903f1fe9ba2/pics/nft_filtered_text.jpg)


There is a grid over whole image - lines has intersection that could have some description in that MORSE message (about crosses)

## EXIF data

There are lots of "Document Ancestors" records in the image (view it in some EXIF viewer, like [this](https://jimpl.com/)
```
"01382216D35927FD6CAF7F2235EE126C", "0AEB3EFE32B8334DA0F36C49E050D29E", "1F421FA8BA215C7D2BC77AB53D37CF39",
"1F4C02B7DFAF7BD465F4B40A052AA3B0", "2F136BD20DB20EE9668CC5311D223F09", "4766E4DBF2475C7FBE17E4C8B2C1D004", 
"500C08FD0FD87DA8058093A58283AE19", "669CC1F8C3F3407A1F27D468CBB6E34B", "7F4A1AA0F00564476D75BB5AA2CC0A75", 
"8AE5CB59EC1EB93F94B4A5820CBA1A48", "96933D92EE329227306E7EFAA0B499C9", "9D5BFF8791EA39EB06144D0A313F4482", 
"B2B4721957AA74D8A3077255833D03D7", "B31468596E42861A268F046602B89B1F", "C300184C4B5B2B1BE5A9EEB5B14B334B", 
"D759BD4C977D8A4977804D0030636B79", "D7ED8F810FFFF74AD2198CB64579E809", "EF93D9D340986C28B2DA047EE0E000E1", 
"F0097C430F38E17B2BF353BD83EAD765", "adobe:docid:photoshop:01dbde29-5d9f-5543-9e02-da41b2ab733c"....
```

## Some UnGroupped references
![Icebergs data]( https://github.com/HomelessPhD/AsAbove_SoBelow/blob/c7fdbe8ba3ea744d8303267c9d4772bff3975224/pics/nft_reduced_someReferences.jpg )

There are lots of references in the image that could have important role:


1] [310 Bitcoin Challenge](https://www.reddit.com/r/Bitcoin/comments/9kq7it/introducing_the_310_btc_bitcoin_challenge/)

2] A phoenix on the chess table

3] [Cicada 3301](https://en.wikipedia.org/wiki/Cicada_3301)

4] Some text - may be the white paper of bitcoin?

5] Some distorted QR code - someone quessed "I think that's a nod to Coin Artist's puzzle."

6] [12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX](https://www.blockchain.com/explorer/addresses/btc/12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX) - one of the oldiest Bitcoin addresses with some BTCs on it untouched

7] A list of Bitcoin addresses?

8] Some text and program code (in c?) - may be from BTC white paper


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

[7] Moon River lyrics - https://genius.com/Andy-williams-moon-river-lyrics

[8] Constellations 1 - https://stardate.org/nightsky/constellations

[8'] Constellations 2 - https://starwalk.space/en/news/zodiac-constellations

-------------------------------------------------------------------------
### Support
I am poor Ukrainian student that will really appreciate any donations.
I have no home (flat\appartment), live in the dorm (refugee shelter).
 
P.S. Successfully evacuated from occupied regions of Ukraine.

**BTC**:  `1QKjnfVsTT1KXzHgAFUbTy3QbJ2Hgy96WU`

**LTC**:  `LNQopZ7ozXPQtWpCPrS4mGGYRaE8iaj3BE`

**DOGE**: `DQvfzvVyb4tnBpkd3DRUfbwJjgPSjadDTb`

 **BSV**: `1E56gGQ1rYG4kkRo5qPLMK7PHcpVYj15Pv`

**AR**: `0UM6uoLrrnxXuYpHMBDAv-6txNTMdaEkR2m_bP_1HyE`
(have never used Arweave wallet)
