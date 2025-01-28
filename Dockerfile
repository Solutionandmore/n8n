# Sử dụng image chính thức từ Docker Hub
FROM node:22
# Đặt thư mục làm việc
WORKDIR /data

# Command mặc định để chạy n8n
CMD ["n8n"]
