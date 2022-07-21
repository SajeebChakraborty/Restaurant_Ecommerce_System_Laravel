<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

use DB;
use PDF;


use Session;




class HomeController extends Controller
{
    public function index(){

        $menu=DB::table('products')->where('catagory','regular')->get();

        $breakfast=DB::table('products')->where('catagory','special')->where('session',0)->get();
        $lunch=DB::table('products')->where('catagory','special')->where('session',1)->get();
        $dinner=DB::table('products')->where('catagory','special')->where('session',2)->get();

        $chefs=DB::table('chefs')->get();


        if(Auth::user())
        {

            $cart_amount=DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','no')->count();


        }
        else
        {

            $cart_amount=0;

        }

        $about_us=DB::table('about_us')->get();
        $banners=DB::table('banners')->get();



        return view("home",compact('menu','breakfast','lunch','dinner','chefs','cart_amount','about_us','banners'));
    }

    public function redirects(){
        
        $menu=DB::table('products')->where('catagory','regular')->get();

        $breakfast=DB::table('products')->where('catagory','special')->where('session',0)->get();
        $lunch=DB::table('products')->where('catagory','special')->where('session',1)->get();
        $dinner=DB::table('products')->where('catagory','special')->where('session',2)->get();


        $chefs=DB::table('chefs')->get();


        if(Auth::user())
        {

            $cart_amount=DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','no')->count();


        }
        else
        {

            $cart_amount=0;

        }


        $about_us=DB::table('about_us')->get();
        $banners=DB::table('banners')->get();


        $usertype= Auth::user()->usertype;
        if($usertype=='1')
    	{
    		return view('admin.adminhome');
    	}
        else{
            
            return view("home",compact('menu','breakfast','lunch','dinner','chefs','cart_amount','about_us','banners'));
        }
    }


    public function reservation_confirm(Request $req)
    {


        $name=$req->name;
        $email=$req->email;
        $phone=$req->phone;

        $no_guest=$req->no_guest;
        $date=$req->date;
        $time=$req->time;

        $message=$req->message;


        $data=array();

        $data['name']=$name;
        $data['email']=$email;
        $data['no_guest']=$no_guest;
        $data['phone']=$phone;
        $data['date']=$date;
        $data['time']=$time;
        $data['message']=$message;


        $confirm_reservation=DB::table('reservations')->Insert($data);

        
        $details = [
            'title' => 'Mail from RMS Admin',
            'body' => 'Your reservation have been Placed Successfully'
        ];
       
       // \Mail::to(Auth::user()->email)->send(new \App\Mail\ReserveMail($details));
     
       $data["title"] = "From RMS admin";
       $data["body"] = "Your reservation have been Placed Successfully";


        /*
        $files = [
            public_path('file/sample.pdf'),
        ];
  
        
        \Mail::send('mails.ReserveMail', $data, function($message)use($data, $files) {
            $message->to(Auth::user()->email)
                    ->subject('Mail from RMS Admin');
 
            foreach ($files as $file){
                $message->attach($file);
            }
            
        });

        */

        $pdf = PDF::loadView('mails.Reserve', $data);
  
        \Mail::send('mails.Reserve', $data, function($message)use($data, $pdf) {
            $message->to(Auth::user()->email,Auth::user()->email)
                    ->subject($data["title"])
                    ->attachData($pdf->output(), "Reservation Copy.pdf");
        });
       


        return view('Reserve_order');



    }

    public function rate($id)
    {


        if(!Auth::user())
        {

            return redirect()->route('login');

        }

        $already_rate=DB::table('rates')->where('product_id',$id)->where('user_id',Auth::user()->id)
        ->count();


        $find_rate=DB::table('rates')->where('product_id',$id)->where('user_id',Auth::user()->id)
        ->value('star_value');


        $products=DB::table('products')->where('id',$id)->first();


        $total_rate=DB::table('rates')->where('product_id',$id)
        ->sum('star_value');


        $total_voter=DB::table('rates')->where('product_id',$id)
        ->count();

        if($total_voter>0)
        {

            $per_rate=$total_rate/$total_voter;

        }
        else
        {

            $per_rate=0;


        }

        $per_rate=number_format($per_rate, 1);


        

        if($already_rate>0)
        {

             
           return view('rate_view',compact('products','find_rate','already_rate','total_rate','total_voter','per_rate'));


        }

  


        return view('rate',compact('products','find_rate','already_rate','total_rate','total_voter','per_rate'));


    }

    public function store_rate($value)
    {


        $product_id=Session::get('product_id');




        $user_id=Auth::user()->id;


        $star_value=$value;




        $data=array();

        $data['user_id']=$user_id;
        $data['product_id']=$product_id;
        $data['star_value']=$value;

        $rate=DB::table('rates')->where('product_id',$product_id)->where('user_id',$user_id)->count();


        if($rate>0)
        {

            $edit_rate=DB::table('rates')->where('product_id',$product_id)->where('user_id',$user_id)->update($data);


        }

        else
        {

            $add=DB::table('rates')->Insert($data);


        }


        return view('Place_rate');




    }


    public function delete_rate()
    {
      
       $product_id=Session::get('product_id');
       $user_id=Auth::user()->id;
       $rate=DB::table('rates')->where('product_id',$product_id)->where('user_id',$user_id)->delete();





       return view('delete_rate_confirm');
  


    }

    public function edit_rate($id)
    {


        if(!Auth::user())
        {

            return redirect()->route('login');

        }

  


        $find_rate=DB::table('rates')->where('product_id',$id)->where('user_id',Auth::user()->id)
        ->value('star_value');


        $products=DB::table('products')->where('id',$id)->first();


        $total_rate=DB::table('rates')->where('product_id',$id)
        ->sum('star_value');


        $total_voter=DB::table('rates')->where('product_id',$id)
        ->count();

        if($total_voter>0)
        {

            $per_rate=$total_rate/$total_voter;

        }
        else
        {

            $per_rate=0;


        }

        $per_rate=number_format($per_rate, 1);

    


        return view('rate',compact('products','find_rate','total_rate','total_voter','per_rate'));


    }
    public function top_rated()
    {

        $products = DB::table('rates') 
                            ->get();


        $data=array();

        
        foreach($products as $product)
        {


            $data[$product->product_id]=0;




        }




        $max_product=array();

        foreach($products as $product)
        {


            $data[$product->product_id]=$data[$product->product_id]+$product->star_value;





        }
                          
        rsort($data);

        

         dd($data);




    }

}
