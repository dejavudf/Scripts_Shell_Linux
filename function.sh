#!/bin/bash

show_system()
{
    echo "The uptime is:";
    uptime;
    echo;
    echo "CPU details:"
    lscpu;
    echo;
    echo "User list:"
    who

}

