#!/bin/bash
grep '0315' ./Player_Analysis/Roulette_Losses | grep '05:00:00 AM' | awk '{print $1, $2, $3}' >> Dealers_working_during_losses && grep '05:00:00 AM' ./Dealer_Analysis/March_10_Roulette_Schedule | awk '{print $3, $4}' >> Dealers_working_during_losses
