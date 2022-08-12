@extends('layout', ['title'=> 'Home'])

@section('page-content')
<div>
    <br>
    @if(Session::has('wrong'))
    <div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Opps !</strong> {{Session::get('wrong')}}
</div>
    @endif
    @if(Session::has('success'))
    <br>
    <div class="success">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Congrats !</strong> {{Session::get('success')}}
</div>
    <br>
    @endif
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
    
  
      @if($total_price!=0)


            @foreach($extra_charge as $chrage)
            <tr>
                <td>{{  $chrage->name }}</td>
                <td style="text-align:center"></td>
                <td style="text-align:center"></td>
                
              
                <td style="text-align:center">৳{{  $chrage->price }}</td>


        
                </tr>
            @endforeach



      @endif
        @php 
        

        
        @endphp
        </tbody>
    <tfoot>
        <form method="post" action="{{route('coupon/apply')}}">
            @csrf    

            @if($total_price==0)
            <td colspan="3" class="text-right" ><strong>  <p style="margin-top:8px !important;">Coupon Code</p> </strong></td>
            <td>  <input type="text" name="code" class="form-control" id="exampleFormControlInput1" placeholder=""></td>
            <td> <button type="submit" class="btn btn-dark" disabled>Apply</button> </td>
            @endif
            @if($total_price!=0)
            <td colspan="3" class="text-right" ><strong>  <p style="margin-top:8px !important;">Coupon Code</p> </strong></td>
            <td>  <input type="text" name="code" class="form-control" id="exampleFormControlInput1" placeholder=""></td>
            <td> <button type="submit" class="btn btn-dark">Apply</button> </td>
            @endif
</form>
        </tr>
        <tr>
        @php 
        
        
        $total = $total_price + $total_extra_charge;
        
        Session::put('total',$total_price);

        if($total_price!=0)
        {
            $total_price=$total_price+$total_extra_charge;
            $without_discount_price=$without_discount_price + $total_extra_charge;

        }




        
        @endphp
       
            <td colspan="5" class="text-right"><h5><strong>Total ৳{{ $without_discount_price }}</strong></h5></td>
        </tr>
        <tr>
  
            <td colspan="5" class="text-right"><h5><strong>Discount ৳{{ $discount_price }}</strong></h5></td>
        </tr>
        <tr>
      
            <td colspan="5" class="text-right"><h3><strong>Total (With Discount) ৳{{ $total_price }}</strong></h3></td>
        </tr>
        <tr>
            <td colspan="5" class="text-right">
                <a href="{{ url('/menu') }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a>
                <form style="display:inline" method="post" action="{{route('cart.checkout', $total)}}">
                    @csrf
                    @if($total_price==0)
                    <button class="btn btn-success" disabled>Checkout</button>
                    @else
                    <button class="btn btn-success">Checkout</button>
                    @endif
                </form>
            </td>
        </tr>
    </tfoot>
</table>
</div>
@endsection


<style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
}


.success {
  padding: 20px;
  background-color: #4BB543;
  color: white;
}


.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>