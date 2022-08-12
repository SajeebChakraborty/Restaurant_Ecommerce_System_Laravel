@extends('admin/adminlayout')

@section('container')


<a href="/add/chef" type="button" class="btn btn-success" style="width:170px;height:35px;padding-top:9px;">+ Add Chef</a>


<br>

<br>




@if(Session::has('wrong'))
              
              <div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
            <strong>Opps !</strong> {{Session::get('wrong')}}
          </div>
          <br>
              @endif
              @if(Session::has('success'))
         
              <div class="success">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
            <strong>Congrats !</strong> {{Session::get('success')}}
          </div>
              <br>
              @endif

<?php

   
  
    $i=1;


?>
@foreach($chefs as $chef)





@if($i%3==1)
<div class="card-deck" style="margin-top:20px;">
 
@endif
  <div class="card">
    <img class="card-img-top" src="{{ asset('assets/images/'.$chef->image) }}" style="width:100%;height:280px;" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">{{ $chef->name }}</h5>
      <p> Job Title : {{ $chef->job_title  }}</p>
     
      <p class="card-text" style="font-size:20px;">
     
                                <a href="{{ $chef->facebook_link  }}" target="_blank"><i class="mdi mdi-facebook" ></i></a>
                                <a href="{{ $chef->twitter_link  }}" target="_blank"><i class="mdi mdi-twitter"></i></a>
                                <a href="{{ $chef->instragram_link  }}" target="_blank"><i class="mdi mdi-instagram"></i></a>
                            
                            </p>
    </div>
    <div class="card-footer">
      <small class="text-muted"><a href="{{ asset('/chef/edit/'.$chef->id) }}" class="btn btn-primary">Edit</a>
      <a href="{{ asset('/chef/delete/'.$chef->id) }}" class="btn btn-danger" style="margin-left:10px;">Delete</a>



      </small>
    </div>
  </div>
  

  @if($i%3==0)

</div>
@endif



<?php

   
  
    $i++;


?>


@endforeach


@if(($i-1)%3!=0)

  @if($fraction==2)


  <div class="card" style="background-color:black;"></div>




  @endif

  @if($fraction==1)


  <div class="card" style="background-color:black;"></div>
  
  <div class="card" style="background-color:black;"></div>
  



@endif




  

@endif




@endsection()



<style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
}

.success {
  padding: 20px;
  background-color: #4BB543 ;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>