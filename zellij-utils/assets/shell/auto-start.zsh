if [[ -z "$ZELLIJ" ]]; then
    if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
        zellij attach -c
        code=$?
    else
        zellij
        code=$?
    fi

    if [[ $code -ne 0 ]]; then
        echo "Zellij Error! Exit code: $code"
    elif [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
        exit
    fi
fi
