#!/bin/sh
# V2Ray new configuration
# Run V2ray
# Write V2Ray configuration
cat << EOF > /etc/v2ray/config.json
 {
    "inbounds": [
    {
      "protocol": "vless",
      "listen": "127.0.0.1",
      "port": 8080,
      "settings": {
        "clients": [
          {
            "id": "1a37fd9b-aa0a-49ef-9788-3d52cd3b4ca6"
          }
        ],
        "decryption": "none"
      },
      "streamSettings": {
        "network": "grpc",
        "grpcSettings": {
          "serviceName": "abc"
        },
        "security": "none"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}
EOF

#Run V2ray

/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
