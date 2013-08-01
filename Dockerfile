from u1210_yo_simple

# create me user

run if ! grep -qE "^me:" /etc/passwd ;then useradd -m -s /bin/bash me; fi

# set up npm config in .npmrc

add npmrc /home/me/.npmrc
run chown me:me /home/me/.npmrc

run su - me -c "npm install -g yo"