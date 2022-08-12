<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<div class="container">
    	<div class="row">
    		<div class="span4">
    			<address>
                    <?php


                            $products=Session::get('products');
                            $total=Session::get('total');
                            $without_discount_price=Session::get('without_discount_price');
                            $discount_price=Session::get('discount_price');
                            $extra_charge=Session::get('extra_charge');
                            $qrcode=Session::get('qrcode');
                            $invoice=Session::get('invoice');
                            $date=Session::get('date')

                    ?>
       
		    	</address>
    		</div>
           <center> <h1>MidwayCafe</h1> </center>
            <img src="data:image/png;base64, {!! $qrcode !!}" style="margin-left:570px;">
    		<div class="span4 well">
    			<table class="invoice-head" style="margin-left:20px;font-size:18px;">
    				<tbody>
             
                    <tr style="text-align:left">
    						<td class="pull-right"><strong>Invoice No  </strong></td>
    						<td style="text-align:left">: {{ $invoice }}</td>
    					</tr>
                  
    					<tr style="text-align=left">
    						<td class="pull-right" style="text-align:left"><strong>Customer Name  </strong></td>
    						<td style="text-align:left">: {{  Auth::user()->name  }}</td>
    					</tr>
                        <tr style="text-align=left">
    						<td class="pull-right" style="text-align:left"><strong>Email  </strong></td>
    						<td style="text-align:left">: {{  Auth::user()->email  }}</td>
    					</tr>

                        <tr style="text-align=left">
    						<td class="pull-right" style="text-align:left"><strong>Status  </strong></td>
    						<td style="text-align:left">: Unpaid</td>
    					</tr>

                        <tr style="text-align=left">
    						<td class="pull-right" style="text-align:left"><strong>Payment Method  </strong></td>
    						<td style="text-align:left">: Cash on Delivery</td>
    					</tr>
    					
    					<tr style="text-align=left">
                         
    						<td class="pull-right" style="text-align:left"><strong>Date  </strong></td>
    						<td  style="text-align:left">: {{ $date }}</td>
                           
    					</tr>
    					
    				</tbody>
    			</table>
    		</div>
    	</div>
        <br>
        <hr>
    	<div class="row">
    		<div class="span8">
    			<h2 style="margin-left:20px;">Product Details</h2>
    		</div>
    	</div>
    	<div class="row">
		  	<div class="span8 well invoice-body">
		  		<table class="table table-bordered" id="customers" style="border:2px solid;margin-left:20px;margin-right:20px !important;width:95%!important;">
					<thead>
						<tr  style="border:2px solid;text-align:center;">
                          <th style="text-align:center;">Product</th>
							<th style="margin-left:20px;text-align:center;">Price</th>
                          <th style="margin-left:20px;text-align:center;">Quantity</th>
							<th style="margin-left:20px;text-align:center;">Subtotal</th>
						</tr>
					</thead>
					<tbody>
                    @foreach($products as $product)
					<tr style="border:2px solid;">
						<td style="margin-left:20px;">{{ $product->name }}</td>
						<td style="margin-left:20px;">{{ $product->price }}</td>
						<td style="margin-left:20px;">{{ $product->quantity }}</td>
                      <td style="margin-left:20px;">{{ $product->subtotal }} Tk</td>
						</tr>
                    @endforeach
                    @foreach($extra_charge as $charge)
					<tr style="border:2px solid;">
						<td style="margin-left:20px;">{{ $charge->name }}</td>
						<td style="margin-left:20px;"></td>
						<td style="margin-left:20px;"></td>
                      <td style="margin-left:20px;">{{ $charge->price }} Tk</td>
						</tr>
                    @endforeach
            <tr><td colspan="4"></td></tr>
<tr>
							<td colspan="2">&nbsp;</td>
							<td><strong>Total</strong></td>
							<td><strong>{{  $without_discount_price }} Tk</strong></td>
						</tr>
            <tr><td colspan="4"></td></tr>
<tr>
							<td colspan="2">&nbsp;</td>
							<td><strong>Discount</strong></td>
							<td><strong>{{  $discount_price }} Tk</strong></td>
						</tr>
            <tr><td colspan="4"></td></tr>
<tr>
							<td colspan="2">&nbsp;</td>
							<td><strong>Total</strong></td>
							<td><strong>{{  $total }} Tk</strong></td>
						</tr>
					</tbody>
				</table>
		  	</div>
  		</div>


        <br>

        <br>

  		<div class="row" style="margin-left:20px;">
          <div class="span3" style="font-size:16px;">
  		        <strong>RMS Admin</strong>
  	    	</div>
            <br>
  	    	<div class="span3">
  		        <strong>Phone:</strong>(+880) 1824072334
  	    	</div>
  	    	<div class="span3">
  		        <strong>Email:</strong> <a href="sajeebchakraborty.cse2000@gmail.com">sajeebchakraborty.cse2000@gmail.com</a>
  	    	</div>
  	    
  		</div>
    </div>

    <style>








        #customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-right:20px !important;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
.invoice-head td {
  padding: 0 8px;
}
.container {
  padding-top:30px;
}
.invoice-body{
  background-color:transparent;
}
.invoice-thank{
  margin-top: 60px;
  padding: 5px;
}
address{
  margin-top:15px;
}
[contenteditable="true"]:hover{
  outline: lightblue auto 5px;
  outline: -webkit-focus-ring-color auto 5px;
}
body{
  background: #f1f1f1;
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}
.invoice{
  padding: 0;
  font-family: "Avenir", serif;
  font-weight: 100;
  width: 95%;
  max-width: 1000px;
  margin: 2% auto;
  box-sizing: border-box;
  padding: 20px;
  border-radius: 5px;
  background: #fff;
  min-height: 800px;
}
.header{
  display: flex;
  width: 100%;
  border-bottom: 2px solid #eee;
  align-items: center;
}
.header--invoice{
  order: 2;
  text-align: right;
  width: 40%;
  margin: 0;
  padding: 0;
}
.invoice--date,
.invoice--number{
  font-size: 12px;
  color: #494949;
}
.invoice--recipient{
  margin-top: 25px;
  margin-bottom: 4px;
}
.header--logo{
  order: 1;
  font-size: 32px;
  width: 60%;
  font-weight: 900;
}
.logo--address{
  font-size: 12px;
  padding: 4px;
}
.description{
  margin: auto;
  text-align: justify;
}
.items--table{
  width: 100%;
  padding: 10px;
  thead{
    background: #ddd;
    color: #111;
    text-align: center;
    font-weight: 800;
  }
  tbody{
    text-align: center;
  }
  .total-price{
    border: 2px solid #444;
    padding-top: 4px;
    font-weight: 800;
    background: lighten(green, 50%);
  }
}


    </style>