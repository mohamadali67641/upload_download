# upload_download
اسکریپت مدیریت پیشرفته برای دانلود و آپلود یک به ده برای سرور مجازی و اختصاصی ایران


# معرفی پروژه: اسکریپت آپلود و دانلود خودکار
این پروژه به شما این امکان را می‌دهد که یک اسکریپت خودکار برای دانلود و آپلود فایل‌ها بر روی سرورهای لینوکس (به ویژه Ubuntu) ایجاد کنید. اسکریپت به‌طور خودکار زمانی که 1 گیگابایت دانلود می‌شود، 10 گیگابایت داده را آپلود می‌کند. این پروسه به‌طور خودکار هر 10 دقیقه یک بار اجرا خواهد شد.

# ویژگی‌های پروژه:

دانلود خودکار 1 گیگابایت: اسکریپت به‌طور خودکار 1 گیگابایت داده را دانلود کرده و پس از دانلود، 10 گیگابایت داده را آپلود می‌کند.
آپلود به سرورهای داخلی ایران: از سرورهای ایرانی برای آپلود داده‌ها استفاده می‌شود.
ثبت لاگ: تمامی فعالیت‌ها در فایل‌های لاگ ذخیره می‌شود که در داشبورد مدیریتی قابل مشاهده هستند.
داشبورد مدیریتی: داشبوردی برای مشاهده وضعیت دانلود و آپلود، و همچنین مشاهده لاگ‌های سیستم.
کرون‌جاب‌ها: اسکریپت‌ها به‌طور خودکار هر 10 دقیقه اجرا می‌شوند.
تنظیمات راحت: تمامی تنظیمات مانند مسیرهای فایل‌ها و URL سرور آپلود در یک فایل config.php قرار داده شده است.

# گام‌های نصب پروژه روی سرور

این پروژه به Apache، PHP و Curl نیاز دارد. برای نصب این پیش‌نیازها، وارد سرور شوید و دستورات زیر را اجرا کنید:

#
sudo apt-get update -y
#
sudo apt-get install -y apache2 php libapache2-mod-php curl unzip
#
راه‌اندازی فایل‌های پروژه
#
 تغییر مالکیت به www-data برای Apache
#
sudo chown -R www-data:www-data /var/www/html/mohanad044
#
 تنظیم مجوزهای صحیح برای فایل‌ها
#
sudo chmod -R 755 /var/www/html/mohanad044
#
تنظیم کرون‌جاب
#
php /var/www/html/mohanad044/src/cron_jobs.php
#
اجرای اسکریپت نصب خودکار
#
bash /var/www/html/mohanad044/install.sh
#
بازدید از داشبورد مدیریتی
#
http://your-server-ip/mohanad044/dashboard/index.php
#
مشاهده لاگ‌ها
#
/var/www/html/mohanad044/logs/cron.log
#
نتیجه‌گیری:
#
با استفاده از این آموزش و کدها، شما می‌توانید اسکریپت آپلود و دانلود خودکار خود را روی سرور نصب کرده و از داشبورد مدیریتی برای نظارت بر عملکرد سیستم استفاده کنید. این سیستم به‌طور خودکار هر 10 دقیقه یک بار فایل‌ها را دانلود و آپلود می‌کند و تمامی عملیات در فایل‌های لاگ ذخیره می‌شود.
