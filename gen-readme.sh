#!/bin/bash

exec > README.md
echo '## leeh profile'
echo 'Personal bash and vim profile'
echo
echo '## Git Installation'
echo '```'
echo 'cat <<EOF | bash'
cat install-git.sh
echo 'EOF'
echo '```'
echo
echo '## HTTP Installation'
echo '```'
echo 'cat <<EOF | bash'
cat install-http.sh
echo 'EOF'
echo '```'
