@extends('admin/adminlayout')

@section('container')

@foreach($chefs as $chef)

<div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Edit Chef</h4>
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

                    <form class="forms-sample" action="{{ asset('/edit/chef/process/'.$chef->id) }}" method="post" enctype="multipart/form-data">

                       @csrf

                      <div class="form-group">
                        <label for="exampleInputName1">Name</label>
                        <input type="text" name="name" value="{{  $chef->name }}" class="form-control" id="exampleInputName1">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Job Title</label>
                        <input type="text" name="job" value="{{  $chef->job_title }}" class="form-control" id="exampleInputName1">
                      </div>
                     
                    
                      <div class="form-group">
                        <label for="exampleInputPassword4">Facebook Link</label>
                        <input type="text" name="fb" value="{{ $chef->facebook_link }}" class="form-control" id="exampleInputPassword4">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Twitter Link</label>
                        <input type="text" name="twitter" value="{{  $chef->twitter_link }}" class="form-control" id="exampleInputName1">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Instagram Link</label>
                        <input type="text" name="instagram" value="{{  $chef->instragram_link }}" class="form-control" id="exampleInputName1">
                      </div>
                    
                      <div class="form-group">
                        <label for="exampleFormControlFile1">Image</label>
                        <input type="file" name="image" class="form-control-file" id="exampleFormControlFile1">
                    </div>
                  
                    
                      <button type="submit" class="btn btn-primary me-2">Update</button>
                      <button class="btn btn-dark">Cancel</button>
                    </form>
                  </div>
                </div>

            </div>



@endsection()



@endforeach

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