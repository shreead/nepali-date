FROM python:3.12-alpine

WORKDIR /app

# Install build dependencies
RUN apk add --no-cache gcc musl-dev libffi-dev git curl

# Clone the full repo
RUN git clone https://github.com/opensource-nepal/py-nepali.git

# Copy just the package folder into our app dir
RUN cp -r py-nepali/nepali /app/nepali && rm -rf py-nepali

# Install flask, gunicorn, and nepali
RUN pip install flask gunicorn nepali

# Add our python script
COPY app.py .

ADD VERSION .

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD curl --fail http://localhost:5000/date || exit 1

CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:5000", "app:app"]
