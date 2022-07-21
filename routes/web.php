<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CartController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\BkashController;
use App\Http\Controllers\ShipmentController;
use App\Http\Controllers\SslCommerzPaymentController;
use App\Http\Controllers\HomeController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get("/", 'App\Http\Controllers\HomeController@index');

Route::get("/redirects",'App\Http\Controllers\HomeController@redirects');

#Route::get("/menu",'App\Http\Controllers\MenuController@menu');
Route::get('/menu', [MenuController::class, 'menu'])->name('menu');

Route::get('/trace-my-order', [ShipmentController::class, 'trace'])->name('trace-my-order');


Route::get('/my-order', [ShipmentController::class, 'my_order'])->name('my-order');


Route::get("/rate/{id}", [HomeController::class, 'rate'])->name('rate');


Route::get("/top/rated", [HomeController::class, 'top_rated'])->name('top/rated');



Route::get("edit/rate/{id}", [HomeController::class, 'edit_rate'])->name('edit/rate');


Route::get("delete/rate", [HomeController::class, 'delete_rate'])->name('delete/rate');



Route::get("/rate/confirm/{value}", [HomeController::class, 'store_rate'])->name('rate.confirm');


Route::get("/cart", [CartController::class, 'index'])->name('cart');


Route::post('/menu/{product}', [CartController::class, 'store'])->name('cart.store');
Route::post('/cart/{product}', [CartController::class, 'destroy'])->name('cart.destroy');
Route::post('/mails/shipped/{total}', [ShipmentController::class, 'place_order'])->name('mails.shipped');
Route::post('/confirm_place_order/{total}', [ShipmentController::class, 'send'])->name('confirm_place_order');

Route::post('/checkout/{total}', [CartController::class, 'checkout'])->name('cart.checkout');
Route::post('/reserve/confirm', [HomeController::class, 'reservation_confirm'])->name('reserve.confirm');

Route::post('/trace/confirm', [ShipmentController::class, 'trace_confirm'])->name('trace.confirm');



Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::get('ssl/pay', [BkashController::class, 'ssl']);
Route::get('ssl/pay2', [BkashController::class, 'ssl2']);

Route::group(['middleware' => ['customAuth']], function () {

    // Payment Routes for bKash
    Route::post('bkash/get-token', 'BkashController@getToken')->name('bkash-get-token');
    Route::post('bkash/create-payment', 'BkashController@createPayment')->name('bkash-create-payment');
    Route::post('bkash/execute-payment', 'BkashController@executePayment')->name('bkash-execute-payment');
    Route::get('bkash/query-payment', 'BkashController@queryPayment')->name('bkash-query-payment');
    Route::post('bkash/success', 'BkashController@bkashSuccess')->name('bkash-success');

    // Refund Routes for bKash
    Route::get('bkash/refund', 'BkashRefundController@index')->name('bkash-refund');
    
    Route::post('bkash/refund', 'BkashRefundController@refund')->name('bkash-refund');

});


// SSLCOMMERZ Start
Route::get('/example1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END
