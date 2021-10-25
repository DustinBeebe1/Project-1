#!/bin/bash
grep '0310' ./Player_Analysis/Roulette_Losses | grep '08:00:00 AM' | awk '{print $1, $2, $3}' >> Dealers_working_during_losses && grep '08:00:00 AM' ./Dealer_Analysis/March_10_Roulette_Schedule | awk '{print $3, $4}' >> Dealers_working_during_losses
