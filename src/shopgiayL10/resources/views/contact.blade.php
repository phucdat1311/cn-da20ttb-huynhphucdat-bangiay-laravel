<!DOCTYPE html>
<html lang="en">
<head>
    @include('head')

</head>

<body>

    <!-- Header -->
@include('header')

<div class="content">
        <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15722.722791578408!2d106.34101506072668!3d9.877132843552163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0181e73eff409%3A0xa928884ab0e2552a!2zdHQuIENow6J1IFRow6BuaCwgVHAuIFRyw6AgVmluaCwgVHLDoCBWaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1703391380503!5m2!1svi!2s"></iframe>
        </div>
        <div class="contact-info">
            <h1>Thông Tin Liên Hệ</h1>
            <ul>
                <li><strong>Tên:</strong> Huỳnh Phúc Đạt</li>
                <li><strong>Địa chỉ:</strong> Châu Thành, Trà Vinh</li>
                <li><strong>Số điện thoại:</strong> 1234567890</li>
                <li><strong>Email:</strong> phucdat@gmail.com</li>
            </ul>
        </div>
    </div>

    <!-- Footer -->
    @include('footer')

    <style>
        /* Thêm CSS để căn giữa */
        .content {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh; /* Điều chỉnh chiều cao tùy ý */
        }

        .contact-info ul {
            list-style: none;
            padding: 0;
            text-align: center;
        }

        .contact-info li {
            margin-bottom: 10px;
            font-weight: bold;
            font-size: 20px;
        }

        iframe {
            height: 500px;
            width: 1500px; 
        }
        
    </style>

</body>
</html>

