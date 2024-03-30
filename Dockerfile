FROM jetpackio/devbox:latest

ARG PROD
ENV PROD=${PROD:-""}


# Installing your devbox project
USER root:root
RUN mkdir -p /code && chown ${DEVBOX_USER}:${DEVBOX_USER} /code
WORKDIR /code
USER ${DEVBOX_USER}:${DEVBOX_USER}
COPY --chown=${DEVBOX_USER}:${DEVBOX_USER} . .

# ENV PROD=true
RUN devbox run -- echo "Installed Packages."

CMD ["devbox", "run", "start"]
