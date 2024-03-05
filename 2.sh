#!/bin/bash

contar_aprobados_suspensos() {
    while read -r _ _ nota; do
        if (( nota >= 5 )); then
            (( aprobados++ ))
        else
            (( suspensos++ ))
        fi
    done < "$1"
    
    echo "Suspensos: $suspensos"
    echo "Aprobados: $aprobados"
}

contar_aprobados_suspensos "notas.txt"
