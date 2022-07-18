@extends('layout', ['title'=> 'Home'])

@section('page-content')
<div>
    <br>
    <br>
    <br>
    <br>
<table id="cart" class="table table-hover table-condensed container">
    <thead>
        <tr>
            <th style="width:50%">Product</th>
            <th style="text-align:center;width:10%">Price</th>
            <th style="width:8%">Quantity</th>
            <th style="width:22%" class="text-center">Subtotal</th>
            <th style="width:10%"></th>
        </tr>
    </thead>
    <tbody>
        @php $total = 0 @endphp
        @foreach($carts as $product)
            @php $total += $product['price'] * $product['quantity'] @endphp
            <tr>
                <td>{{$product->name}}</td>
                <td style="text-align:center">৳{{$product->price}}</td>
                <td style="text-align:center">{{$product->quantity}}</td>
                <td style="text-align:center">৳{{$product->subtotal}}</td>
                <td style="text-align:center" class="actions" data-th="">
                    <form method="post" action="{{route('cart.destroy', $product)}}" onsubmit="return confirm('Sure?')">
                        @csrf
                        <button class="btn btn-danger btn-sm remove-from-cart"><i class="fa fa-trash">
                        </i></button>
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
    <tfoot>
        <tr>
            <td colspan="5" class="text-right"><h3><strong>Total ৳{{ $total }}</strong></h3></td>
        </tr>
        <tr>
            <td colspan="5" class="text-right">
                <a href="{{ url('/menu') }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a>
                <form style="display:inline" method="post" action="{{route('cart.checkout', $total)}}">
                    @csrf
                    <button class="btn btn-success">Checkout</button>
                </form>
            </td>
        </tr>
    </tfoot>
</table>
</div>
@endsection