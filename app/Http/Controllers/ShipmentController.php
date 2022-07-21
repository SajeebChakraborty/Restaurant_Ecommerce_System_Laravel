<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\User;
use App\Mail\OrderShipped;
use App\Models\Order;
use Illuminate\Support\Facades\Mail;
use Auth;

use DB;


class ShipmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $carts = Cart::all();
        return view("cart", compact('carts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $order = Cart::all();
 
        // Ship the order...
 
        Mail::to($request->user())->send(new OrderShipped($order));
    }
    public function place_order($total)
    {

        return view('place_order',compact('total'));


    }


    public function send(Request $request,$total)
    {    

        $data=array();

        $invoice = substr(str_shuffle("0123456789abcdefghijklmnopqrstvwxyz"), 0, 8);
        /*
        $order_list = DB::table('carts')->where('product_order','yes')->get();


        foreach($order_list as $order)
        {

            while($order->invoice_no != $invoice)
            {

                $invoice = substr(str_shuffle("0123456789abcdefghijklmnopqrstvwxyz"), 0, 8);


            }


        }
        */
        //return $invoice;
        
        
        $data['shipping_address']=$request->address;
        $data['product_order']="yes";
        $data['invoice_no']=$invoice;
        $data['pay_method']="Cash On Delivery";
        $data['delivery_time']="3 hours";
        $data['purchase_date']=date("Y-m-d");


      


        $carts = DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','no')->update($data);
    
        $details = [
            'title' => 'Mail from RMS Admin',
            'body' => 'Your order have been Placed Successfully.Your order Invoice no - '.$invoice. 'ok',
        ];
       
        \Mail::to(Auth::user()->email)->send(new \App\Mail\PaymentMail($details));
       
        return view('Confirm_order',compact('invoice'));
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
        //
    }

    public function my_order()
    {

        if(!Auth::user())
        {

            return redirect()->route('login');

        }

        
        $carts = Cart::all()->where('user_id',Auth::user()->id)->where('product_order','!=','no');
        $total_price = DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','!=','no')->sum('subtotal');
        return view("my_order", compact('carts','total_price'));

        

    }
    public function trace()
    {

        if(!Auth::user())
        {

            return redirect()->route('login');

        }

        
        $carts = Cart::all()->where('user_id',Auth::user()->id)->where('product_order','yes');
        $total_price = DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','no')->sum('subtotal');
        return view("trace", compact('carts','total_price'));

        

    }

    public function trace_confirm(Request $req)
    {

        if(!Auth::user())
        {

            return redirect()->route('login');

        }
        $carts = DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','!=','no')->where('invoice_no',$req->invoice)->count();

        if($carts==0)
        {

            return back();

        }

        
        $carts = Cart::all()->where('user_id',Auth::user()->id)->where('product_order','!=','no')->where('invoice_no',$req->invoice);
        $total_price = DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','!=','no')->where('invoice_no',$req->invoice)->sum('subtotal');
    
        return view("trace_confirm", compact('carts','total_price'));



    }

}
