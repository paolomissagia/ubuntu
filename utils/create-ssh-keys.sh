ssh-keygen -t ed25519 -C "login@paolomissagia.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

ssh-keygen -t rsa-sha2-256
