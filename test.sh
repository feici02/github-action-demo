function hello() {
    name="$1"
    text=$(cat <<EOF
Hello, $name!
This is a multiline string.
EOF
    )
    echo "$text!"
}
hello "GitHub Actions"