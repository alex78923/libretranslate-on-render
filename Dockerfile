FROM libretranslate/libretranslate:latest

# Render sets the PORT environment variable for web services.
# We use a small shell script as the entrypoint to pass the correct port to LibreTranslate.

EXPOSE 5000

# Create a start.sh script that launches LibreTranslate with the correct port
RUN echo '#!/bin/sh\nexec libretranslate --host 0.0.0.0 --port $PORT' > /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
