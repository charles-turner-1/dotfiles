function enew() {
    if [ -z "$1" ]; then
        echo "Usage: enew <filename>"
        return 1
    fi

    touch "$1"
    open -a "Visual Studio Code" "$1"
}
