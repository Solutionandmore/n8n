# Sử dụng image chính thức từ Docker Hub
FROM n8nio/n8n:latest

# Đặt thư mục làm việc cho container
WORKDIR /data

# Copy các file cần thiết (nếu bạn có thay đổi cấu hình hoặc code riêng)
# COPY ./your-local-dir /data

# Cài đặt các phụ thuộc (nếu cần)
# RUN npm install --only=production

# Cung cấp cổng mặc định cho n8n
EXPOSE 5678

# Đặt biến môi trường cho n8n
ENV N8N_PORT=5678
ENV DB_TYPE=postgres
ENV DB_POSTGRESDB_HOST=db.tcsghskgyjvcbwxmirga.supabase.co
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=postgres
ENV DB_POSTGRESDB_USER=postgres.tcsghskgyjvcbwxmirga
ENV DB_POSTGRESDB_PASSWORD=Bluerains22
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=thien747@thienoi.vn
ENV N8N_BASIC_AUTH_PASSWORD=Bluerains22
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Chạy n8n
CMD ["n8n"]
