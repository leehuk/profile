#!/bin/bash

exec > README.md
echo '## leeh profile'
echo 'Personal bash and vim profile'
echo
echo '## Git Installation'
echo '```'
echo 'cat <<EOF > $HOME/.profile_setup.sh && bash $HOME/.profile_setup.sh'
cat install-git.sh
echo 'EOF'
echo '```'
echo
echo '## HTTP Installation'
echo '```'
echo 'cat <<EOF > $HOME/.profile_setup.sh && bash $HOME/.profile_setup.sh'
cat install-http.sh
echo 'EOF'
echo '```'
