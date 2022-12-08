#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c913c692-c170-4387-8841-1f80cce19651"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

