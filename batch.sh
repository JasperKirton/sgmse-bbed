#!/bin/bash

for par1 in "bus" "str" "ped" "caf"
do
	for par2 in "m9" "0" "9"
	do
		python eval.py --test_env "$par1" --test_snr "$par2" --test_speaker 1 --device="mps" --destination_folder "enhanced" --ckpt '../bbed_epoch=222-pesq=3.04.ckpt' --force_N 5 --reverse_starting_point 0.5 
	done
done

