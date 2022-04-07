FROM rasa/rasa:3.0.8-full
WORKDIR '/app'
COPY . /app
USER root
# WORKDIR /app
# COPY . /app
COPY ./data /app/data
#обучение модели
#RUN  rasa train
VOLUME /app
VOLUME /app/data
VOLUME /app/models
#для запуска модели обученной вне
CMD ["run", "-m", "test_model.tar.gz","--enable-api"]
#для запуска модели обученной в контейнере
#CMD ["run", "--enable-api"]
