@extends('layout', ['title'=> 'Home'])

@section('page-content')
<div>
    <br>
    <br>
    <br>
    <br>

    <center>
@foreach($carts as $product)
<h4>Trace order</h4>

<br>
<br>

<style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 20.00%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
<div class="row">

    <div class="column">

    <img src="{{ asset('assets/images/package.png')}}" height="100px" weight="100px" alt="">
    

    </div>

    <div class="column">
    
    <img src="{{ asset('assets/images/right.png')}}" style="margin-top:-15px !important;" height="50px" weight="50px"  alt="">

    <h1 style="color:Green;">----------></h1>


    </div>

    <div class="column">

    <img src="{{ asset('assets/images/delivery.png')}}" height="100px" weight="100px"  alt="">

    </div>
    <div class="column">

    
    @if($product->product_order=="yes")

    <h6 style="padding-top:15px;color:Red;">(Remaining : {{ $product->delivery_time }})</h6>
    <h1 style= color:Gray;">----------></h1>


    @else

    <img src="{{ asset('assets/images/right.png')}}" style="margin-top:-15px !important;" height="50px" weight="50px"  alt="">

    <h1 style="color:Green;">----------></h1>


    @endif

    </div>

 

    <div class="column">

    <img src="{{ asset('assets/images/order.png')}}" height="100px" weight="100px"  alt="">

    </div>


</div>

<br>
<br>

<br>

<br>
@break
@endforeach

</center>
    <center>

    <h4>Product Details</h4>
    <br>
    <br>


    </center>
   
<table id="cart" class="table table-hover table-condensed container">
    <thead>
        <tr>
            <th style="width:50%">Product</th>
            <th style="text-align:center;width:10%">Price</th>
            <th style="width:8%">Quantity</th>
            <th style="width:22%" class="text-center">Subtotal</th>
     
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
                
            </tr>
            
        @endforeach
    </tbody>
    <tfoot>
        <tr>
        @php 
        
        
        $total = $total_price;
        
        Session::put('total',$total_price);
        
        @endphp
            <td colspan="4" class="text-right"><h3><strong>Total ৳{{ $total_price }}</strong></h3></td>
        </tr>
        <tr>
            <td colspan="5" class="text-right">
                <a href="{{ url('/menu') }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a>
             
            </td>
        </tr>
    </tfoot>
</table>
</div>
@endsection