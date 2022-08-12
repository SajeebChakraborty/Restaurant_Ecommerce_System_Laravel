@extends('admin/adminlayout')

@section('container')


<a href="/add/delivery_boy" type="button" class="btn btn-success" style="width:170px;height:35px;padding-top:9px;">+ Add Delivery boy</a>


<br>
<br>


<div class="row ">
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Delivery boy Details</h4>
                    
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
                            <th> Email </th>
                            <th> Phone</th>

                            <th>Salary</th>
                        


                            <th> Action </th>
                          </tr>
                        </thead>
                        <tbody>

                        @foreach($delivery_boys as $delivery_boy)
                          <tr>
                           
                            <td>
                              <span>{{ $delivery_boy->id }}</span>
                            </td>
                            <td> {{ $delivery_boy->name }} </td>


                         




                            <td> {{ $delivery_boy->email }}</td>


                            <td> {{ $delivery_boy->phone }} </td>

                            <td>{{ $delivery_boy->salary }} Tk</td>
                     


                            <td>

                            <a href="{{ asset('/delivery_boy/edit/'.$delivery_boy->id) }}" class="badge badge-outline-primary">Edit</a>
                              <a href="{{ asset('/delivery_boy/delete/'.$delivery_boy->id) }}" class="badge badge-outline-danger" style="margin-left:10px;">Delete</a>
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