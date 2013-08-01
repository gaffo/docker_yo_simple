from u1210_yo_simple

# create me user

run if ! grep -qE "^me:" /etc/passwd ;then useradd -m -s /bin/bash me; fi