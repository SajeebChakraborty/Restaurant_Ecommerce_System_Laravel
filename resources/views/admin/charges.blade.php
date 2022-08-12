@extends('admin/adminlayout')

@section('container')


<a href="/add/charge" type="button" class="btn btn-success" style="width:170px;height:35px;padding-top:9px;">+ Add Charge</a>


<br>
<br>


<div class="row ">
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Charge Details</h4>

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
                    <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                          
           
                            <th> ID </th>
                            <th> Name </th>
                            <th> Amount </th>
      

                            <th> Action </th>
                          </tr>
                        </thead>
                        <tbody>

                        @foreach($charges as $charge)
                          <tr>
                           
                            <td>
                              <span>{{ $charge->id }}</span>
                            </td>
                            <td> {{ $charge->name }} </td>


                         


                            <td>  {{  $charge->price }} Tk</td>


                
                     


                            <td>

                            <a href="{{ asset('/admin/charge/edit/'.$charge->id) }}" class="badge badge-outline-primary">Edit</a>
                              <a href="{{ asset('/admin/charge/delete/'.$charge->id) }}" class="badge badge-outline-danger" style="margin-left:10px;">Delete</a>
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