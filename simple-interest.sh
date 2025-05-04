#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3
    interest=$(echo "$principal * $rate * $time / 100" | bc -l)
    echo "Simple Interest: $interest"
}

# Read inputs from user
echo "Enter the principal amount:"
read principal
echo "Enter the rate of interest (in %):"
read rate
echo "Enter the time period (in years):"
read time

# Call the function with the inputs
calculate_simple_interest $principal $rate $time

chmod +x simple-interest.sh
