FROM functions/resizer
ADD https://github.com/alexellis/faas/releases/download/0.6.1/fwatchdog /usr/bin/
RUN chmod +x /usr/bin/fwatchdog
RUN apk add --no-cache ghostscript-fonts
COPY entry.sh .
ENV fprocess="sh entry.sh"

