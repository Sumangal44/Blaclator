#!/bin/bash

# Function to print the calculator banner
print_banner() {
    echo " _     _            _       _"
    echo "| |   | |          | |     | |"
    echo "| |__ | | __ _  ___| | __ _| |_ ___  _ __"
    echo "| '_ \| |/ _' |/ __| |/ _' | __/ _ \| '__|"
    echo "| |_) | | (_| | (__| | (_| | || (_) | |"
    echo "|_.__/|_|\__,_|\___|_|\__,_|\__\___/|_|"
    echo
}

# Function to perform addition
perform_addition() {
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    result=$(bc <<< "$num1 + $num2")
    echo "The result of $num1 + $num2 is: $result"
}

# Function to perform subtraction
perform_subtraction() {
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    result=$(bc <<< "$num1 - $num2")
    echo "The result of $num1 - $num2 is: $result"
}

# Function to perform multiplication
perform_multiplication() {
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    result=$(bc <<< "$num1 * $num2")
    echo "The result of $num1 * $num2 is: $result"
}

# Function to perform division
perform_division() {
    read -p "Enter the dividend: " dividend
    read -p "Enter the divisor: " divisor
    result=$(bc <<< "scale=2; $dividend / $divisor")
    echo "The result of $dividend / $divisor is: $result"
}

# Function to display the menu and get user's choice
display_menu() {
    echo "----- Calculator Menu -----"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    read -p "Enter your choice (1-5): " choice
}

# Main program
clear
print_banner

while true; do
    display_menu

    case $choice in
        1) perform_addition ;;
        2) perform_subtraction ;;
        3) perform_multiplication ;;
        4) perform_division ;;
        5) echo "Exiting the calculator. Goodbye!" ; break ;;
        *) echo "Invalid choice. Please try again." ;;
    esac

    read -p "Press Enter to perform another calculation..."
    clear
    print_banner
done
