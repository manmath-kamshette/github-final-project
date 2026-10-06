#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "--------------------------"

read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (%): " rate
read -p "Enter the time period (in years): " time

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "Simple Interest: $interest"

total=$(echo "scale=2; $principal + $interest" | bc)
echo "Total Amount: $total"
