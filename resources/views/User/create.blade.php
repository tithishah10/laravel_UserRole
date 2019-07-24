
<html>
    <head>
        <title>Role</title>
    </head>
    <body>
        <form  action="{{route('user.store')}}" method="post">
        <input type="hidden" name="reg_id" value="{{session('regid')}}">
        @csrf
        
            <table border="2" align="center">
                <tr>
                    <th colspan="2"><h3>User Form</h3></th>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" class="form-control" name="fname" placeholder="Enter First name" autofocus="true"></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lname" placeholder="Enter last name" autofocus="true"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" placeholder="Enter Email" autofocus="true"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" placeholder="Enter password" autofocus="true"></td>
                </tr>
                <tr>
                    <td>Role</td>
                    <td>
                        <select name="role_id" id="">
                            @foreach($rolearray as $role)
                                <option value="{{$role->role_id}}">{{$role->role_name}}</option>
                            @endforeach
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="submit" value="Submit"></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>