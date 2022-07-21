@extends('layout', ['title'=> 'Home'])

@section('page-content')
<div>
    <br>
    <br>
    <br>
    <br>
   
    
            <center>
                    <div class="contact-form">
                        <form id="" action="/trace/confirm" method="post">
                            @csrf
                          <div class="">
                            <div class="col-lg-12">
                                <h1>Trace my order</h1>
                                <br>
                                <br>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                                <input name="invoice" type="text" id="name" placeholder="Invoice no" required="">
                              </fieldset>
                            </div>
                            
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                                <input name="phone" type="text" id="phone" placeholder="Phone Number" required="">
                              </fieldset>
                            </div>
                           
                           
                           
                            <div class="col-lg-6">
                              <fieldset>
                                <button type="submit" id="form-submit" class="main-button-icon">Submit</button>
                              </fieldset>
                            </div>
                          </div>
                        </form>
                    </div>
               
                    </center>
            

</div>
@endsection