#!/usr/bin/env bash

set -e

source env.$1.sh || true

docker run -dt --name $1 -e USERNAME=$USERNAME -e PASSWORD=$PASSWORD -e TAGLIST=$TAGLIST -e TAGBLACKLIST=$TAGBLACKLIST -e BOTMODE=$BOTMODE instabot

# create env.bot.sh and run on bash: $ ./run.sh bot
# example env.bot.sh :

# #!/usr/bin/env bash
# USERNAME="username"
# PASSWORD="password"
# TAGLIST="follow4follow,f4f,cute"
# TAGBLACKLIST="rain,thunderstorm"
# BOTMODE="0"
