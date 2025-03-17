# Sử dụng Nginx làm web server
FROM nginx:alpine

# Copy file cấu hình Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy toàn bộ file HTML vào Nginx
COPY . /usr/share/nginx/html

# Mở cổng 80
EXPOSE 80

# Chạy Nginx
CMD ["nginx", "-g", "daemon off;"]