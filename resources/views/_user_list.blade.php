<table class="table table-bordered">
    <thead>
      <tr>
       <th>Sr. NO.</th>
        <th>Fill Name</th>
        <th>Email</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>

@if(!empty($users))  
      @php 
        $i = 1;
        $page = ($users->currentPage()-1)*10
      @endphp    
     
      @foreach($users as $user)
      <tr>
        <td>{{$page+$i}}</td>
        <td>{{$user->name}}</td>
        <td>{{$user->email}}</td>
        <td><ul>
            <li><a href="{{url('/edit/'.$user->id)}}">Edit</a></li>
            <li><a href="javascript:void(0)" onclick="deleteUser('{{$user->id}}')">Delete</a></li>
          </ul>
        </td>
      </tr>
      @php 
        $i++;
      @endphp
      @endforeach
@else
      <tr>
        <td colspan="3">No record found</td>
      </tr>
@endif
</tbody>
  </table>
  {{ $users->links() }}
<script>
$(document).ready(function(){
  $('.pagination a').on('click', function(e){
    e.preventDefault();
    var url = $(this).attr('href');
       console.log(url);
       getUserList(url);
     });
});
</script>



