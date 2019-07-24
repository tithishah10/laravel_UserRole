<html>
    <head>
        <title>Role</title>
    </head>
    <body>
        <form action="{{route('role.store')}}" method="post">
        @csrf
            <table border="2">
                <tr>
                    <td>Role Name</td>
                    <td><input type="text" name="role_name" placeholder="Enter Role" autofocus="true"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="submit" value="Submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>