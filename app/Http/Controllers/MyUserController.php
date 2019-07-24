<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;
use App\Role;
use App\UserRole;
use App\User;

class MyUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $userarray = DB::table('users')
            ->leftjoin('user_roles','users.uid','=','user_roles.uid')
            ->leftjoin('roles','user_roles.role_id','=','roles.role_id')
            ->select('user_roles.*','users.*','roles.*')
            ->get();
            
        return view('user.index',compact('userarray'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $rolearray=Role::all();
        return view('user.create',compact('rolearray'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $userarray =User::where('uid','=',$id)->first();
        $rolearray = Role::all();
        return view('user.edit',compact('userarray','rolearray'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'fname'=>'required',
            'lname'=>'required',
            'email'=>'required|email',
            'password'=>'required|max:6',
        ]);
        
        $userarray = User::where('uid','=',$id)->first();
        $userrole = UserRole::where('uid','=',$id)->first();

        $userarray->fname=$request->get('fname');
        $userarray->lname=$request->get('lname');
        $userarray->email=$request->get('email');
        $userarray->password=$request->get('password');
        
        $userrole->role_id =$request->get('role_id') ;
        $userarray->save();
       
        $userrole->save();
        return redirect('/user')->with('success','user Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::where('uid','=',$id)->delete();
        return redirect('/user')->with('success','User deleted');
    }
}
