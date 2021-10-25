#!/bin/bash
grep '0312' ./Player_Analysis/Roulette_Losses | grep '02:00:00 PM' | awk '{print $1, $2, $3}' >> Dealers_working_during_losses && grep '02:00:00 PM' ./Dealer_Analysis/March_10_Roulette_Schedule | awk '{print $3, $4}' >> Dealers_working_during_losses
