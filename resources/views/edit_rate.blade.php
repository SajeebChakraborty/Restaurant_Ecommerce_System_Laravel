@extends('layout', ['title'=> 'Home'])

@section('page-content')

<br><br>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
        integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <script src="script.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
    <br><br><br>
    <div class="row justify-content-center">
            <div>
            
                <p id="text-area" style="font-size:50px;marigin-bottom:-50px;">Please, rate our service</p>
  
            </div>
        </div>
<table class="table table-striped table-bordered" style="margin:10%; max-width:80%;">

            <tr>
                <td>
                    <img src="{{asset('assets/images/'.$products->image)}}" height=150px width=180px></td>
                    <td><h2>{{$products->name}}</h2>
                    <h4>৳{{$products->price}}</h4>
                    <p>{{$products->description}}</p>
                   
                      <?php


                        Session::put('product_id',$products->id);

                        $whole = floor($per_rate);      // 1
                        $fraction = $per_rate - $whole


                       ?>
              
                        
                        <span class="product_rating">
                        @for($i=1;$i<=$whole;$i++)

                            <i class="fa fa-star "></i>

                            @endfor

                            @if($fraction!=0)

                            <i class="fa fa-star-half"></i>

                            @endif
                                
                                
                            <span class="rating_avg">({{  $per_rate }})</span>
            </span>
            <br>
            
      




            <div id="rate" class="rate" style="margin-right:430px; !important">

                    <label id="star5" onclick="rate(5)" style="color: #FCA311;" ></label>
                    <label id="star4" onclick="rate(4)" style="color: #FCA311;"></label>
                 <label id="star3" onclick="rate(3)" style="color: #FCA311;"></label> 
                    <label id="star2" onclick="rate(2)" style="color: #FCA311;"></label>
                    <label id="star1" onclick="rate(1)" style="color: #FCA311; margin-left:-150px; !important"></label>
                </div>



  

                </td>
            </tr>
    
</table>
@endsection
<style>




p{
    font-family: Roboto;
    font-size: 3rem;
    font-weight: 600;
    color: black;
}

.center {
    width: 100vw;
    height: 40vh;
    display: flex;
    flex-wrap: nowrap;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    
}

label {
    float: right;
    font-size: 0;
    color: #E5E5E5;
    margin: 1vw;
}

label::before {
    content: "\f005";
    font-family: 'Font Awesome 5 free';
    font-size: 8vh;
}

label:hover,  label:hover~label {
    color: #FCA311;
    transition: 0.8s;
    font-weight: 900;
}

.active {
    color: #FCA311;
    font-weight: 900;
}
</style>

<script>

function rate(value) {
    clearRates(); //vacia clase active
    addRates(value); //añade clase active
}


//Aqui quitamos el color de las estrellas - Remove Active
function clearRates() { 
    for(var i=1; i<=5; i++) {
        document.getElementById("star" +i).classList.remove("active");
    }

    document.getElementById("text-area").innerHTML="Please, rate our service";
}

//Aqui añadimos el color a las estrellas - Add Active
function addRates(value) { 
    for(var i=1; i<=value; i++) {
        document.getElementById("star" +i).classList.add("active");
    }

   document.getElementById("text-area").innerHTML="Thank you!";
   window.location = "confirm/"+value;
}

 //capturo cualquier click en cualquier sitio 
//si el click NO está dentro del div quitamos el color a las estrellas
window.addEventListener("click", function(click) {
    if(!document.getElementById("rate").contains(click.target)) { 
        clearRates();
    }
})



</script>