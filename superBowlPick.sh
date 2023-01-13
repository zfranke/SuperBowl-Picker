#!/bin/bash
# Super Bowl Picker

# This script picks a team to win the Super Bowl.

#Variables

declare NFC
declare AFC
declare nfcChamp
declare afcChamp
declare coinToss



#NFC Teams by seed
PlayOffTeamsNFC=(
    "Philadelphia Eagles", 
    "San Francisco 49ers",
    "Minnesota Vikings",
    "Tampa Bay Buccaneers",
    "Dallas Cowboys",
    "New York Giants",
    "Seattle Seahawks"
)

#AFC Teams by seed
PlayOffTeamsAFC=(
    "Kansas City Chiefs",
    "Buffalo Bills",
    "Cincinnati Bengals",
    "Jacksonville Jaguars",
    "Los Angeles Chargers",
    "Baltimore Ravens",
    "Miami Dolphins"
)

# Pick a random number between 0 and 6 for each conference
NFC=$((RANDOM % 7))
AFC=$((RANDOM % 7))





#Pick the teams for nfc and afc
nfcChamp=${PlayOffTeamsNFC[$NFC]}
afcChamp=${PlayOffTeamsAFC[$AFC]}

# Display the results.

echo "The NFC Champion is the $nfcChamp"
echo "The AFC Champion is the $afcChamp"

#Pick the super bowl winner
coinToss=$((RANDOM % 2))

if [ $coinToss -eq 0 ]
then
    echo "The Super Bowl Winner is the $nfcChamp"
else
    echo "The Super Bowl Winner is the $afcChamp"
fi

# Exit with a 0 exit status.

exit 0


