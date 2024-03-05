#!/bin/bash

dar_calificacion_por_nombre_asign() {
    while read -r nombre asign nota; do
        if [[ "$nombre" == "$1" && "$asign" == "$2" ]]; then
            dar_calificacion $nota
            return
        fi
    done < "$3"
    
    echo "No hay información para el estudiante y el módulo"
}

dar_calificacion_por_nombre_asign "Pepe" "SOR" "notas.txt"