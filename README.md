# AWS_CLI_IAM_AUDIT
Obtiene los usuarios IAM de AWS de diferentes perfiles y los exporta a un archivo .csv
```
Requerimientos para MAC OS o Linux:
1.  AWS CLI: https://docs.aws.amazon.com/es_es/cli/latest/userguide/cli-chap-configure.html
2.  Homebrew: https://brew.sh/index_es
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
3.  Libreria 'jq': 
     brew install jq
4. Asignar permisos de ejecución:
      chmod +x AWS_IAM.sh
5. Editar los nombres de los perfiles por los configurados en el archivo config de AWS: https://docs.aws.amazon.com/es_es/cli/latest/userguide/cli-configure-files.html
```
```
6. ejecutar el script desde terminal:
      user@mac: ./AWS_IAM.sh
7. La información quedará guardada en "instancias_ec2.csv" en la misma ruta desde la que se ejecuto el script
```
