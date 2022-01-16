#!/bin/bash

location=$1
readonly location
item_list=$(ls -1d "${location}"/*)
readonly item_list

rename_item() {
    month_no=$1
    month_name=$2
    new_item_name="${month_no}_${item_name}"

    if [[ $item_name != "${month_no}_"* ]]; then
        printf "INFO: Item \"%s\" matches pattern for %s - renaming to \"%s\"\n" "${item_name}" "${month_name}" "${new_item_name}"
        mv "${item}" "${location}/${new_item_name}"
    else
        printf "WARN: Item \"%s\" matches pattern for %s but has already correct prefix - skipping\n" "${item_name}" "${month_name}"
    fi
}

while read -r item; do
    item_name=$(basename "${item}")

    case "${item_name,,}" in
        *jan*)
            rename_item "01" "January"
        ;;
        *feb*)
            rename_item "02" "February"
        ;;
        *mar*)
            rename_item "03" "March"
        ;;
        *apr*)
            rename_item "04" "April"
        ;;
        *may*)
            rename_item "05" "May"
        ;;
        *jun*)
            rename_item "06" "June"
        ;;
        *jul*)
            rename_item "07" "July"
        ;;
        *aug*)
            rename_item "08" "August"
        ;;
        *sep*)
            rename_item "09" "September"
        ;;
        *oct*)
            rename_item "10" "October"
        ;;
        *nov*)
            rename_item "11" "November"
        ;;
        *dec*)
            rename_item "12" "December"
        ;;
        *)
            printf "Item \"%s\" didn't match any month pattern - skipping\n" "${item_name}"
        ;;
    esac
done < <(printf '%s\n' "$item_list")
