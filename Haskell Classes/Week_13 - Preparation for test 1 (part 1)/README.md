# Tasks

# Task 1
Define a function that accepts an alphabet and an input and returns all the possible shifts of the Ceaser cypher.

Test case:

    crackall ['A'..'Z'] "FYYFHPQTSITSYTRTWWTBFYYJSFR" -> ["EXXEGOPSRHSRXSQSVVSAEXXIREQ","DWWDFNORQGRQWRPRUURZDWWHQDP","CVVCEMNQPFQPVQOQTTQYCVVGPCO","BUUBDLMPOEPOUPNPSSPXBUUFOBN","ATTACKLONDONTOMORROWATTENAM","ZSSZBJKNMCNMSNLNQQNVZSSDMZL","YRRYAIJMLBMLRMKMPPMUYRRCLYK","XQQXZHILKALKQLJLOOLTXQQBKXJ","WPPWYGHKJZKJPKIKNNKSWPPAJWI","VOOVXFGJIYJIOJHJMMJRVOOZIVH","UNNUWEFIHXIHNIGILLIQUNNYHUG","TMMTVDEHGWHGMHFHKKHPTMMXGTF","SLLSUCDGFVGFLGEGJJGOSLLWFSE","RKKRTBCFEUFEKFDFIIFNRKKVERD","QJJQSABEDTEDJECEHHEMQJJUDQC","PIIPRZADCSDCIDBDGGDLPIITCPB","OHHOQYZCBRCBHCACFFCKOHHSBOA","NGGNPXYBAQBAGBZBEEBJNGGRANZ","MFFMOWXAZPAZFAYADDAIMFFQZMY","LEELNVWZYOZYEZXZCCZHLEEPYLX","KDDKMUVYXNYXDYWYBBYGKDDOXKW","JCCJLTUXWMXWCXVXAAXFJCCNWJV","IBBIKSTWVLWVBWUWZZWEIBBMVIU","HAAHJRSVUKVUAVTVYYVDHAALUHT","GZZGIQRUTJUTZUSUXXUCGZZKTGS"]

# Task 2
Define a function that checks whether a string is part of another string.

Test case:

    substring "Haskell" "Haskell Curry" -> True
    substring "Curry" "Haskell Curry" -> True
    substring "Curry" "Haskell C5urry" -> True
    substring "Turing" "Haskell Curry" -> False

# Task 3
Define a function that takes an alphabet, a list of common words and an input. The function returns the most plausable decryption.

Test case:

    crackcandidates ['A'..'Z'] ["THE","AND","AT","ON","IS"] "FYYFHPQTSITSYTRTWWTBFYYJSFR" -> ["ATTACKLONDONTOMORROWATTENAM"]

# Task 4
Define a function that takes an alphabet, an offset, a step, a blockSize and a normalized message. The function returns the string made from taking the first blockSize letters, encrypting them with the offset and then encryting the next blockSize letters with (offset + step) offset.

Test case:

    polyencrypt ['A'..'Z'] 5 1 7 "ATTACKLONDONTOMORROWATTENAM" -> "FYYFHPQUTJUTZUTVYYVDHBBMVIU"

# Task 5
Define a function that decrypts the message from task 4.

Test case:

    polydecrypt ['A'..'Z'] 5 1 7 "FYYFHPQUTJUTZUTVYYVDHBBMVIU" -> "ATTACKLONDONTOMORROWATTENAM"

# Task 6
One of the main components of The Enigma Machine is a system of rotors. A rotor can be represented with the functions already defined in tasks 4 and 5. The message, then, is passed from rotor to rotor until we reach the final one, the result from which is the final encrypted message. Your task is to write a function that accepts an alphabet, a list of rotors and a message and returns its encrypted eqivalent.

Test case:

    enigmaencrypt ['A'..'Z'] [(5,1,1),(7,2,10),(13,3,25)] "ATTACKLONDONTOMORROWATTENAM" -> "ZTUCFOQUULZZGCBEIJHQXRSEOFS" 

# Task 7
Define a function that decrypts a message produced from task 6.

Test case:

    enigmadecrypt ['A'..'Z'] [(5,1,1),(7,2,10),(13,3,25)] "ZTUCFOQUULZZGCBEIJHQXRSEOFS" -> "ATTACKLONDONTOMORROWATTENAM"