FROM rasa/rasa:3.0.8-full
WORKDIR '/app'
COPY . /app
USER root
# WORKDIR /app
# COPY . /app
#COPY ./data /app/data
VOLUME /app
#VOLUME /app/data
VOLUME /app/models
CMD ["run", "-m", "test_model.tar.gz","--enable-api"]
