@extends('admin/adminlayout')

@section('container')





<div class="row ">
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Cancelled Order Details</h4>
                    <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                          
           
                            <th> Date </th>
                            <th> Invoice No </th>
                            <th> Customer Name </th>
                            <th> Customer Phone</th>
                        
                            <th> Shippping Address </th>
              
                  
                            <th> Payment Method </th>
                            <th> Action </th>
                          </tr>
                        </thead>
                        <tbody>

                        @foreach($orders as $order)
                          <tr>
                           
                            <td>
                              <span class="ps-2">{{ $order->purchase_date }}</span>
                            </td>
                            <td> {{ $order->invoice_no }} </td>
                            <td>


                            @php

                              $user=DB::table('users')->where('id',$order->user_id)->first();

                            @endphp


                            {{  $user->name }}



                            </td>


                            <td>  {{  $user->phone }}</td>
                            <td> {{ $order->shipping_address }} </td>
                     
                            <td> {{ $order->pay_method }} </td>

                            <td>

                            <a href="{{ asset('/invoice/details/'.$order->invoice_no) }}" class="badge badge-outline-primary">Details</a>
                            </td>
                          </tr>

                        @endforeach
                       
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>





@endsection()