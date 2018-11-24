## Constants
TEST_NAME="Delete User Test"
EXPECTED_OUTPUT="0 text.txt"

## Compile the program
make

echo "Running: $TEST_NAME"
./class_manager <<'EOF'
text.txt
a
Harsha
Kuchampudi
1234
hkuchampudi@mail.usf.edu
0
0
0
q
EOF

./class_manager <<'EOF'
text.txt
d
1234
q
EOF

## Check the output
OUTPUT=$(wc -l text.txt)
if [ "$OUTPUT" == "$EXPECTED_OUTPUT" ]; then 
    echo "$TEST_NAME    -   PASSED"
else
    echo "$TEST_NAME    -   FAILED"
    exit 1
fi

## Cleanup program
make clean