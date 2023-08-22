FROM python:3-slim AS build-env
WORKDIR /app

COPY . .

FROM gcr.io/distroless/python3
COPY --from=build-env /app /app
WORKDIR /app
CMD ["calculator.py"]
