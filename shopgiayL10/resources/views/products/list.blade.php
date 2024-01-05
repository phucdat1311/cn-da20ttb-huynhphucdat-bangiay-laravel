<div class="row isotope-grid">
    @foreach($products as $key => $product)
        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
            <!-- Block2 -->
            <div class="block2">
                <div class="block2-pic hov-img0">
                    <img src="{{ $product->thumb }}" alt="{{ $product->name }}">
                </div>

                <div class="block2-txt flex-w flex-t p-t-14">
                    <div class="block2-txt-child1 flex-col-l ">
                        <a href="/san-pham/{{ $product->id }}-{{ Str::slug($product->name, '-') }}.html"
                           class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                            {{ $product->name }}
                        </a>

                        <span class="stext-105 cl3">
                        <p style="font-family: 'Arial, sans-serif'; font-size:17px">Giá gốc: <del>{!! \App\Helpers\Helper::price($product->price) !!} VNĐ</del></p>
                        </span>
                        <span class="stext-105 cl3">
                        <p style="font-family: 'Arial, sans-serif'; font-size:20px; color: red;">Giá giảm: {!! \App\Helpers\Helper::price($product->price_sale) !!} VNĐ</p>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</div>
<style>
    .block2-pic img {
        width: 300px; /* Chiều rộng mong muốn */
        height: 310px; /* Chiều cao mong muốn */
        object-fit: cover; /* Đảm bảo hình ảnh không bị méo */
    }
    del{
        text-decoration: line-through;
    }
</style>

