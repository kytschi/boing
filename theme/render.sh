#!/bin/bash

convert logo.png -background none -layers flatten jpg:- | jp2a - --color > logo.txt
convert background.png -background none -layers flatten jpg:- | jp2a - --color > background.txt
