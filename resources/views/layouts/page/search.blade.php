@include('layouts/front/head')
<title>ตลาดคอมฮาร์ดแวร์ ซื้อขาย ช้อปสินค้าประมูล หลุดจอง ราคาน่าโดน</title>
@include('layouts/front/header')

<body>
    <!-- Breadcrumb Start -->
    <div class="breadcrumb-wrap">
        <div class="container-fluid">
            <ul class="breadcrumb font-th">
                <li class="breadcrumb-item"><a href="{{ url('/') }}">หน้าหลัก</a></li>
                <li class="breadcrumb-item active">{{$category->name}}</li>
            </ul>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Footer Start -->
    @include('layouts/front/footer')

    <!-- Back to Top -->
    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('front_end/lib/easing/easing.min.js') }}"></script>
    <script src="{{ asset('front_end/lib/slick/slick.min.js') }}"></script>

    <!-- Template Javascript -->
    <script src="{{ asset('front_end/js/main.js') }}"></script>
</body>

</html>
