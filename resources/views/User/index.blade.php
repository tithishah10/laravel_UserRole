<html>
    <head>
       <title>User Data</title>
    </head>
    <body>
    <script type="text/javascript" src="{{asset('jquery-3.4.1.js')}}"> </script>
    <script type="text/javascript" src="{{asset('jquery.dataTables.js')}}"> </script>
    <link rel="stylesheet" href="{{asset('jquery.dataTables.css')}}" type="text/css">
        
    <script>
            $(document).ready(function(){
                $("#myUserTable").DataTable();
            });
        </script>
       

            <table id="myUserTable" border="2">
                <thead>
                <tr>
                    <td><b>First Name</b></td>
                    <td><b>Last Name</b></td>
                    <td><b>Email</b></td>
                    <td><b>Role</b></td>
                    <td><b>Edit</b></td>
                    <td><b>Delete</b></td>
                   
                </tr>
                </thead>
                <tbody>
                @foreach($userarray as $user)
                <tr>
                   
                        <td>{{$user->fname}}</td>
                        <td>{{$user->lname}}</td>
                        <td>{{$user->email}}</td>
                        <td>{{$user->role_name}}</td>
                        <td><a href="{{route('user.edit',$user->uid)}}">Edit</a></td>
                        <td>
                            <form action="{{ route('user.destroy',$user->uid) }}" method="post">
                                @csrf
                                @method('DELETE')
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                </tr>
                @endforeach
                </tbody> 
            </table>
            
            <a href="{{route('user.create')}}">Add</a>
        </form>
    </body>
</html>