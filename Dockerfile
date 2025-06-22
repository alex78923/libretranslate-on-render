name: libre-translate
services:
  libretranslate:
    tty: true
    stdin_open: true
    ports:
'5001:5000'
    environment:
      -
        LT_SSL: 'true'
    image: libretranslate/libretranslate
