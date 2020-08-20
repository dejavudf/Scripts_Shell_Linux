#!/bin/bash

global_var1="hello"
global_var2="world"


function demo() {
    echo -e "\033[46mfunction [demo] started...\033[0m"
    local global_var2="Broke Girls"
    echo "调用变量:$global_var1 $global_var2"
    echo -e "\033[46mfunction [demo] end.\033[0m"
}

demo
echo
echo "$global_var1 $global_var2."
