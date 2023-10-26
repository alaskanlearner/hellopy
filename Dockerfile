# Menggunakan base image Python
FROM python:3.8

# Menyalin berkas Python ke dalam container
COPY hello.py /app/hello.py

# Menetapkan direktori kerja
WORKDIR /app

# Menjalankan perintah untuk menginstal dependensi Python jika diperlukan
# Jika Anda tidak memiliki dependensi tambahan, Anda dapat menghapus baris ini
RUN pip install some-dependency

# Menjalankan aplikasi Python ketika container dijalankan
CMD ["python", "hello.py"]
