
FILE=CP160321
TGL="20${FILE:2:2}-${FILE:4:2}-${FILE:6}"
cat Daily_Closing_Price/CP160321.csv | sed "s/^/$TGL\|/"
