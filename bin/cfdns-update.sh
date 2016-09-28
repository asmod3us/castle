#!/bin/sh

AUTH_EMAIL=achim.staebler@gmail.com
AUTH_KEY=$(cat ~/.cf-auth-key)
ZONE_ID=5164a427b66bbd82279ad22f07e0e01d
RECORD_ID=68590bd570fcdff577dba3b3bf2139c7
RECORD_NAME=skynet.nyx.io
CFDNS=eric.ns.cloudflare.com

# IF6=$(netstat -rn -f inet6 | awk '/default/ {if ( index($4, "en") > 0 ){print $4} }')
# IPV6=$(ifconfig "$IF6"| awk '/inet6/ && /autoconf temporary/ && !/deprecated/ { print $2}')
# CURRENT_IPV6=$(dig +short -t AAAA ${RECORD_NAME} @${CFDNS})

IPV4=$(dig +short A myip.opendns.com @resolver1.opendns.com)
CURRENT_IPV4=$(dig +short ${RECORD_NAME} @${CFDNS})

if [ "$CURRENT_IPV4" != "$IPV4" ]; then
    echo "Updating record..."
    curl -q -s -X PUT \
    "https://api.cloudflare.com/client/v4/zones/${ZONE_ID}/dns_records/${RECORD_ID}" \
    -H "Content-Type:application/json" \
    -H "X-Auth-Key:${AUTH_KEY}" \
    -H "X-Auth-Email:${AUTH_EMAIL}" \
    --data "{\"id\":\"${ZONE_ID}\",\"type\":\"A\",\"name\":\"${RECORD_NAME}\",\"content\":\"$IPV4\",\"ttl\":120}"
else
    echo "Record up to date."
fi
