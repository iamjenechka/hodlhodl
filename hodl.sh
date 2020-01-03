#!/bin/bash

key=$(cat key.file)


function listing_countries {	
	curl -g "https://hodlhodl.com/api/v1/countries" -X GET \
	-H "Authorization: Bearer ${key}"\
	-H "Content-Type: application/json"

}


for arg in "$@"
do
    if [ "$arg" == "--list-countries" ] || [ "$arg" == "-lc" ]
    then
        listing_countries;
    fi
done




