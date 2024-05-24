#!/bin/sh

ACPI_RES=$(acpi -b)
ACPI_CODE=$?

if [ $ACPI_CODE -eq 0 ]
then
    BAT_LEVEL_ALL=$(echo "$ACPI_RES" | grep -v "unavailable" | grep -E -o "[0-9][0-9]?[0-9]?%")
    BAT_LEVEL=$(echo "$BAT_LEVEL_ALL" | awk -F"%" 'BEGIN{tot=0;i=0} {i++; tot+=$1} END{printf("%d%%", tot/i)}')

    
    if [ "${BAT_LEVEL%?}" -le 5 ]
    then
        echo " $BAT_LEVEL"
        echo "$BAT_LEVEL"
        echo "#cc2846"
    elif [ "${BAT_LEVEL%?}" -le 50 ]
    then
        echo " $BAT_LEVEL"
        echo "$BAT_LEVEL"
        echo "#B3B3B3"
    elif [ "${BAT_LEVEL%?}" -le 60 ]
    then
        echo " $BAT_LEVEL"
        echo "$BAT_LEVEL"
        echo "#B3B3B3"
    elif [ "${BAT_LEVEL%?}" -le 95 ]
    then
        echo " $BAT_LEVEL"
        echo "$BAT_LEVEL"
        echo "#B3B3B3"
    else
        echo " $BAT_LEVEL"
        echo "$BAT_LEVEL"
        echo "#B3B3B3"
    fi
fi
