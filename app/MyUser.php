<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MyUser extends Model
{
    protected $primaryKey = 'uid';
    protected $fillable =[
        'fname',
        'lname',
        'email',
        'password'
    ];
    public function userroles(){
        return $this->hasMany('UserRole::class');
    }
}
