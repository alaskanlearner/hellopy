# Menggunakan base image Python
FROM python:3.8

# Membuat direktori /app
RUN mkdir /app

# Menyalin berkas Python ke dalam container
COPY hello.py /app/hello.py

# Menetapkan direktori kerja
WORKDIR /app

# Menginstal Flask (bisa juga menggunakan pipenv atau requirements.txt)
RUN pip install Flask

# Menjalankan aplikasi Python ketika container dijalankan
CMD ["python", "hello.py"]
# EXPOSE 80 22