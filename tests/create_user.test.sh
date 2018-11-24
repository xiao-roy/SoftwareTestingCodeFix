## Constants
TEST_NAME="Create User Test"
EXPECTED_OUTPUT="Harsha Kuchampudi 1234 hkuchampudi@mail.usf.edu 0 0 0"

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

## Check the output
OUTPUT=$(cat text.txt)
if [ "$OUTPUT" == "$EXPECTED_OUTPUT" ]; then 
    echo "$TEST_NAME    -   PASSED"
else
    echo "$TEST_NAME    -   FAILED"
    exit 1
fi

## Cleanup program
make clean