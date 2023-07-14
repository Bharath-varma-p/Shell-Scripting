echo "Hello, Bharath How are you is everything ok"



# 1. Creating a Variable and User Inputs

## Write a script that prompts the user for their name and greets 
## them with a personalized message.

echo "Enter your name:"
read name
echo "Hello, $name! Welcome to the world of shell scripting."
echo "Setup an Temperature"
read degree
echo "The weather is \"$degree\" today."

echo "\n"

echo "Enter a number:"
read num

if ((num > 0)); then
  echo "The number is positive."
elif ((num < 0)); then
  echo "The number is negative."
else
  echo "The number is zero."
fi

echo "End of the Terminal"




