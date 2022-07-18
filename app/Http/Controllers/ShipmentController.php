<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\User;
use App\Mail\OrderShipped;
use App\Models\Order;
use Illuminate\Support\Facades\Mail;


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


    public function send(Request $request)
    {    
        #Mail::to($user)->send(new Ordershipped ($user));
        $arrayEmails = ['rahathossenmanik@gmail.com'];
        $emailSubject = 'My Subject';
        $emailBody = 'Hello, this is my message content.';

        Mail::send('mails.shipped',
            ['msg' => $emailBody],
            function($message) use ($arrayEmails, $emailSubject) {
                $message->to($arrayEmails)
                ->subject($emailSubject);
            }
        );
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
}
