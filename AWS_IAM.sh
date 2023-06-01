#!/bin/bash

# Lista de perfiles de AWS
profiles=("perfil1" "perfil2" "perfil3") #Debe reemplazar perfil por el perfil creado en el archivo config de AWS

csv_filename="instancias_ec2.csv" #Crea el archivo csv

# Encabezados del archivo CSV
echo "Profile,Instance ID,Name,State,Public IP,Private IP,VPC ID,Subnet ID" > "$csv_filename"

# Iterar sobre los perfiles
for profile_name in "${profiles[@]}"
do
    # Obtener el nombre del perfil actual
    echo "Procesando perfil: $profile_name"

    # Obtener la lista de instancias EC2
    aws --profile "$profile_name" ec2 describe-instances --output json | jq -r '.Reservations[].Instances[] | [.InstanceId, (.Tags[] | select(.Key=="Name") | .Value), .State.Name, .PublicIpAddress, .PrivateIpAddress, .VpcId, .SubnetId] | @csv' | sed 's/"//g' | sed "s/^/$profile_name,/" >> "$csv_filename"
done

echo "Archivo CSV exportado correctamente."
