# Sử dụng image chính thức từ Docker Hub
FROM n8nio/n8n:latest

# Đặt thư mục làm việc
WORKDIR /data

# Command mặc định để chạy n8n
CMD ["sh", "-c", "ping -c 4 google.com || curl https://www.google.com"]
