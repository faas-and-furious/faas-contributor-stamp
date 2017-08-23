FROM functions/resizer
RUN apk add --no-cache ghostscript-fonts
COPY entry.sh .
ENV fprocess="sh entry.sh"

