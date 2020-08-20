#!/bin/bash

global_var1="hello"
global_var2="world"


function demo() {
    func_var="Test"
    global_var2="Broke Girls"
    echo "全局变量:$global_var1 $global_var2"
}

echo "函数内部变量:[$func_var]"
echo "$global_var1 $global_var2."
