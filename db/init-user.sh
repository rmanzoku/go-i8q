#!/bin/bash

cat <<'EOF' | mysql -uroot
CREATE USER 'isucon'@'%' IDENTIFIED BY 'isucon';
GRANT ALL ON torb.* TO 'isucon'@'%';
EOF


# CREATE USER 'isucon'@'localhost' IDENTIFIED BY 'isucon';
# GRANT ALL ON torb.* TO 'isucon'@'localhost';
