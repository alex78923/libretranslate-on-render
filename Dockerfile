FROM libretranslate/libretranslate:latest

EXPOSE 5000

RUN printf '#!/bin/sh\nexec libretranslate --host 0.0.0.0 --port $PORT\n' > /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
