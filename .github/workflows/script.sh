
myArray=("cat" "dog" "mouse" "frog")


# Check if an element is in the array and length is greater than 1
if [[ ${myArray[@]} =~ "cat" && ${#myArray[@]} -gt 1 ]]; then
  echo "cat is in the array"
fi