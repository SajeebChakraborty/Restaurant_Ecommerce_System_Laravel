@extends('admin/adminlayout')

@section('container')






@php 

    $i=1;

@endphp



          @if(Session::has('wrong'))

          <br>
              
              <div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
            <strong>Opps !</strong> {{Session::get('wrong')}}
          </div>
          <br>
              @endif
              @if(Session::has('success'))


            <br>
        
              <div class="success">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
            <strong>Congrats !</strong> {{Session::get('success')}}
          </div>
              <br>
              @endif

  @foreach($banners as $banner)
  <div class="card mb-3">
  <img src="{{ asset('assets/images/'.$banner->image) }}" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Banner {{ $i }}</h5>

    <a href="{{  asset('admin/banner/edit/'.$banner->id) }}" type="button" class="btn btn-primary">Edit</a>
    <a href="{{  asset('admin/banner/delete/'.$banner->id) }}" type="button" class="btn btn-danger">Delete</a>
  </div>
</div>
@php 

    $i++;

@endphp

    @endforeach





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