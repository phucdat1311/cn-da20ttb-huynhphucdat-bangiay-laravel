## Thông tin tác giả:

- **Họ và tên:** Huỳnh Phúc Đạt
- **Mã số sinh viên:** 110120016
- **Lớp:** Công nghệ thông tin
- **Mã lớp:** DA20TTB
- **Email:** phucdat13111311@gmail.com
- **Số điện thoại:** 0328991008

## Giới thiệu về dự án Laravel:

Dự án Laravel là một ứng dụng web bán giày, xây dựng trên nền tảng Laravel framework. Ứng dụng này cung cấp khả năng mua sắm giày trực tuyến, xem chi tiết sản phẩm, và đặt hàng.

## Cài đặt:

Để chạy dự án, cần cài đặt các công cụ sau:

- **Composer:** Công cụ quản lý gói PHP. [Tải Composer](https://getcomposer.org/)
- **XAMPP:** Bộ công cụ phát triển web bao gồm Apache, MySQL, PHP, và Perl. [Tải XAMPP](https://www.apachefriends.org/index.html)
- **Visual Studio Code:** Môi trường phát triển code. [Tải Visual Studio Code](https://code.visualstudio.com/)

## Yêu cầu hệ thống:

- **Phiên bản PHP:** Laravel yêu cầu phiên bản PHP >= 7.3.0.
- **Hệ điều hành:** Hỗ trợ Windows, macOS, Linux.
- **Dung lượng ổ đĩa:** Cần khoảng 200MB để cài đặt các công cụ cần thiết.

## Hướng dẫn sử dụng:

Sau khi cài đặt XAMPP, Visual Studio Code và Composer, thực hiện các bước sau:

1. **Khởi động XAMPP:**
   - Mở XAMPP Control Panel và khởi động Apache và MySQL.
   - Truy cập vào phần Admin của MySQL và tạo một tên CSDL mới cho dự án.

2. **Khởi động Visual Studio Code:**
   - Mở Visual Studio Code và mở thư mục dự án Laravel.
   - Vào mục `.env` của dự án.
   - Tìm kiếm dòng `DB_DATABASE="..."` và thay `...` bằng tên CSDL đã tạo mới ở trên, sau đó lưu lại.

3. **Khởi chạy dự án Laravel:**
   - Mở Terminal.
   - Chạy lệnh `php artisan serve`.
   - Sau khi chạy xong, xuất hiện dòng "Server running on [http://127.0.0.1:8000]".
   - Sao chép đường dẫn http://127.0.0.1:8000 và dán vào thanh địa chỉ trình duyệt.
   - Trang web bán giày sẽ hiển thị và có thể thao tác mua hàng trên đó.

## Hình minh họa:
![image](https://github.com/phucdat1311/cn-da20ttb-huynhphucdat-bangiay-laravel/assets/117262546/8624666f-5307-41fb-9c2a-d37ef475ab92)
