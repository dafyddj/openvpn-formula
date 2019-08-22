# -*- coding: utf-8 -*-
# vim: ft=yaml
---
openvpn:
  lookup:
    service: OpenVPNService
  client:
    myclient1:
      proto: udp
      dev: tun
      comp_lzo: "yes"
      pull: false
      tls_client: false
      nobind: false
      ifconfig: 169.254.0.2 169.254.0.1
      remote:
        - 192.168.10.10 2000
      log_append: '"C:\\ProgramData\\OpenVPN\\log\\myclient1.log"'
      secret: '"C:\\ProgramData\\OpenVPN\\config\\myclient1_secret.key"'
      # /usr/sbin/openvpn --genkey --secret /dev/stdout
      secret_content: |
        #
        # 2048 bit OpenVPN static key
        #
        -----BEGIN OpenVPN Static key V1-----
        6b3e7b098232e9c885f8deed5c069b02
        47a966595178cc30ebcd4e1042e019ef
        fdfbed752e26ef7b0877e0e0a6e4e38b
        ffed3fd9da205ff6cd39825d0f8a99ec
        324848682062676868b57e4474791042
        4dc4ad7f3ff7ba8815e31f950c7443c8
        b52441384936cbf50d2f4d051d0c889a
        f118dec5c749398cdce859fced60a4eb
        4e78abb9939f8dbe1cbdbbcaa914b539
        6258235dce1a8ef044a29f8ce018f183
        4b83f17a42b788c583cf006cccb5050f
        a1c53b22688d98a2092fcd23b160b01a
        064d84f1355c605287b30b140c3c5fa7
        b5e2a0a8def6eb46b3ab4a11b5cb4c96
        4c099bf8e74b8bf4e6509de69b7a79ad
        7391b6cf3f4ae296ecf8b552144a2947
        -----END OpenVPN Static key V1-----
