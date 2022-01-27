<div class="top-bar">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6">
                <i class="fa fa-envelope"></i>
                chhcompany@gmail.com
            </div>
            <div class="col-sm-6">
                <i class="fa fa-phone-alt"></i>
                0628068250
            </div>
        </div>
    </div>
</div>
<!-- Top bar End -->

<!-- Nav Bar Start -->
<div class="nav">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a href="#" class="navbar-brand">MENU</a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav mr-auto font-th">
                    <a href="{{ url('/') }}" class="nav-item nav-link">หน้าหลัก</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">หมวดหมู่</a>
                        <div class="dropdown-menu">
                            @foreach ($category as $i)
                                <a href="{{ url('/page/category/' . $i->category_id) }}"
                                    class="dropdown-item">{{ $i->engname }}&nbsp;{{ $i->name }}</a>
                            @endforeach
                        </div>
                    </div>
                    <a href="{{ url('/page/product') }}" class="nav-item nav-link">สินค้า</a>
                    {{-- <a href="{{ url('/page/cart') }}" class="nav-item nav-link">ตะกร้า</a>
                    <a href="{{ url('/page/wishlist') }}" class="nav-item nav-link">ถูกใจ</a> --}}
                </div>

                @if (Route::has('login'))
                    <div class="navbar-nav">
                        @auth
                            <div class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle font-th" data-toggle="dropdown">แอคเคาท์</a>
                                <div class="dropdown-menu">
                                    <a href="{{ route('home') }}" class="dropdown-item font-drop">หน้าหลัก</a>
                                    @if (Auth::user()->checkAdmin())
                                        <a href="{{ route('admin') }}" class="dropdown-item font-drop">หน้าแอดมิน</a>
                                    @endif
                                    <form action="{{ route('logout') }}" method="POST">
                                        @csrf
                                        <button class="dropdown-item font-drop">ล็อกเอาท์</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    @else
                        <div class="navbar-nav">
                            <div class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle font-th" data-toggle="dropdown">แอคเคาท์</a>
                                <div class="dropdown-menu">
                                    <a href="{{ route('login') }}" class="dropdown-item font-drop">ล็อกอิน</a>
                                    @if (Route::has('register'))
                                        <a href="{{ route('register') }}" class="dropdown-item font-drop">สมัครสมาชิก</a>
                                </div>
                            </div>
                        </div>
                    @endif
                @endauth
                @endif

                {{-- ------ เปลี่ยนภาษา ------ --}}
                {{-- <div class="navbar-nav">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle font-th" data-toggle="dropdown">ภาษา</a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item font-drop">อังกฤษ</a>
                            <a href="#" class="dropdown-item font-drop">ไทย</a>
                        </div>
                    </div>
                </div> --}}
            </div>
        </nav>
    </div>
</div>
<!-- Nav Bar End -->

<!-- Bottom Bar Start -->
<div class="bottom-bar">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-md-3">
                <div class="logo">
                    <a href="{{ url('/') }}">
                        <img src="{{ asset('front_end/img/logo2.png') }}" alt="ตลาดคอมฮาร์ดแวร์">
                    </a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="search">
                    <form action="{{ route('search') }}" method="GET">
                        <input type="text" placeholder="Search" name="search">
                        <button><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>
            <div class="col-md-3">
                <div class="user">
                    <a href="wishlist.html" class="btn wishlist">
                        <i class="fa fa-heart"></i>
                        <span>(0)</span>
                    </a>
                    <a href="cart.html" class="btn cart">
                        <i class="fa fa-shopping-cart"></i>
                        <span>(0)</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
