#!/bin/bash

dar_calificacion() {
    nota=$1
    if (( nota < 5 )); then
        echo "Suspendido"
    elif (( nota < 7 )); then
        echo "Aprobado"
    else
        echo "Sobresaliente"
    fi
}
dar_calificacion 8
