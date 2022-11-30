#!/bin/sh

ACPI_RES=$(acpi -b)
ACPI_CODE=$?

if [ $ACPI_CODE -eq 0 ]
then
    BAT_LEVEL_ALL=$(echo "$ACPI_RES" | grep -v "unavailable" | grep -E -o "[0-9][0-9]?[0-9]?%")
    BAT_LEVEL=$(echo "$BAT_LEVEL_ALL" | awk -F"%" 'BEGIN{tot=0;i=0} {i++; tot+=$1} END{printf("BAT: %d%%", tot/i)}')
    TIME_LEFT=$(echo "$ACPI_RES" | grep -v "unavailable" | grep -E -o "[0-9]{2}:[0-9]{2}:[0-9]{2}")

    if [ -z "$TIME_LEFT" ]
    then
        TIME_LEFT="00:00"
    fi

    TIME_LEFT=$(echo $TIME_LEFT | awk '{ printf("%s", substr($1, 0, 5)) }')
    echo "$BAT_LEVEL - $TIME_LEFT"
    echo "BAT: $BAT_LEVEL"
    
    if [ "${BAT_LEVEL%?}" -le 20 ]
    then
        echo "#cc2846"
    elif [ "${BAT_LEVEL%?}" -le 25 ]
    then
        echo "#f6b655"
    else
        echo "#007872"
    fi
fi
