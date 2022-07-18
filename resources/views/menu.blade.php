@extends('layout', ['title'=> 'Home'])

@section('page-content')

<br><br><br><br>
<table class="table table-striped table-bordered" style="margin:10%; max-width:80%;">
        @foreach($products as $product)
            <tr>
                <td>
                    <img src="{{$product->image}}" height=150px width=150px></td>
                    <td><h2>{{$product->name}}</h2>
                    <h4>৳{{$product->price}}</h4>
                    <p>{{$product->description}}</p>
                    <form method="post" action="{{route('cart.store', $product)}}">
                        @csrf
                        <button class="btn btn-success">Add to Cart</button>
                    </form>
                </td>
            </tr>
        @endforeach
</table>
@endsection