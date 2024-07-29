FROM python:3-slim AS build-env
RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

COPY . /app
WORKDIR /app
RUN make all

FROM gcr.io/distroless/python3
COPY --from=build-env /app /app
WORKDIR /app
CMD ["main.py"]
