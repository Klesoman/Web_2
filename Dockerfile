# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Linux з попередньо встановленим python-3.10
FROM python:alpine3.18


# Встановимо змінну середовища
ENV APP_HOME /assistant

# Встановимо робочу директорію всередині контейнера
WORKDIR $APP_HOME

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

# Встановимо залежності всередині контейнера
RUN pip install -r /assistant/requirements.txt

# Позначимо порт, де працює застосунок всередині контейнера


# Запустимо наш застосунок всередині контейнера
ENTRYPOINT ["python", "/assistant/assistant/main.py"]