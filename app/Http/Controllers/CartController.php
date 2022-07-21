<?php

namespace App\Http\Controllers;
use App\Models\Product;
use App\Models\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;

class CartController extends Controller
{
    
    
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(!Auth::user())
        {

            return redirect()->route('login');

        }
        $carts = Cart::all()->where('user_id',Auth::user()->id)->where('product_order','no');
        $total_price = DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','no')->sum('subtotal');
        return view("cart", compact('carts','total_price'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $id)
    {

        if(!Auth::user())
        {

            return redirect()->route('login');

        }
        
        $product = Product::find($id);
        $quantity = $request->number;
        if (Cart::where('product_id', '=', $id)->where('user_id',Auth::user()->id)->where('product_order','no')->exists()) {
            $quant = Cart::where('product_id', '=', $id)->where('user_id',Auth::user()->id)->where('product_order','no')->first()->value('quantity');
            $quantity = $quantity + (int) $quant;

            DB::table('carts')->where('product_id', '=', $id)->where('user_id',Auth::user()->id)->where('product_order','no')->update([
                'quantity' => $quantity,
                'subtotal' => $quantity*$product->price
            ]);
        }else{
            DB::table('carts')->insert([
                'product_id' => $product->id, 
                'user_id'=> Auth::user()->id,   
                'product_order' => "no",
                'shipping_address' => 'N/A',
                'name' => $product->name,
                'price' => $product->price,
                'quantity' => $quantity,
                'subtotal' => $quantity*$product->price
            ]);
        }


        return back();

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Cart::find($id);
        $product->delete();

        return redirect()->route('cart');
    }




    public function checkout($total)
    {
        return view("checkout", compact('total'));
    }
}
