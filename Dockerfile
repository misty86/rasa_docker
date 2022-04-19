FROM rasa/rasa:3.0.8-full
WORKDIR '/app'
COPY . /app
USER root
VOLUME /app
VOLUME /app/models
CMD ["run", "-m", "pre_prod_model_best.tar.gz","--enable-api"]
