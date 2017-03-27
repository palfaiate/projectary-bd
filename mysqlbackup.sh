#BAckup Base de Dados
mysqldump -u $1 -p --routines --databases projectary --result-file="projectary-bd-dump.sql"
