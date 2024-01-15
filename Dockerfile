FROM python:3.11.4

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY . .

RUN pip install pipenv

RUN pipenv install --deploy --ignore-pipfile

EXPOSE 5000

ENTRYPOINT ["pipenv", "run", "python", "Personal_Assistant.py"]
