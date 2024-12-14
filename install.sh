#!/bin/bash

# به‌روزرسانی سیستم
echo "به‌روزرسانی سیستم..."
sudo apt-get update -y

# نصب پیش‌نیازها
echo "نصب Apache, PHP, Curl, و unzip..."
sudo apt-get install -y apache2 php libapache2-mod-php curl unzip git

# دانلود پروژه از لینک GitHub
echo "دانلود پروژه از GitHub..."
cd /var/www/html
sudo wget https://raw.githubusercontent.com/mohamadali67641/upload_download/refs/heads/main/upload_download.zip -O upload_download.zip

# استخراج فایل‌های پروژه
echo "استخراج فایل‌های پروژه..."
sudo unzip upload_download.zip -d /var/www/html/mohanad044

# تنظیم مجوزها
echo "تنظیم مجوزها..."
sudo chown -R www-data:www-data /var/www/html/mohanad044
sudo chmod -R 755 /var/www/html/mohanad044

# تنظیم کرون‌جاب‌ها برای اجرای خودکار اسکریپت هر 10 دقیقه
echo "تنظیم کرون‌جاب‌ها..."
echo "*/10 * * * * /usr/bin/php /var/www/html/mohanad044/src/upload_download.php >> /var/www/html/mohanad044/logs/cron.log 2>&1" | sudo crontab -

# ایجاد فایل لاگ در صورت نبود
if [ ! -f /var/www/html/mohanad044/logs/cron.log ]; then
    sudo touch /var/www/html/mohanad044/logs/cron.log
fi

# راه‌اندازی Apache
echo "راه‌اندازی Apache..."
sudo systemctl restart apache2

# پیغام اتمام نصب
echo "پروژه با موفقیت نصب شد!"
