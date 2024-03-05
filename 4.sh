#!/bin/bash

tiene_todo_aprobado() {
    while read -r nombre _ nota; do
        if [[ "$nombre" == "$1" && $(dar_calificacion $nota) != "Aprobado" ]]; then
            echo "No"
            return
        fi
    done < "$2"
    
    echo "Sí"
}

tiene_todo_aprobado "Antonio" "notas.txt"