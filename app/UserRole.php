<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserRole extends Model
{
    protected $primaryKey = 'user_role_id';
    protected $fillable=[
        'uid',
        'role_id'
    ];
    public function users(){
        return $this->belongsto('User::class');
    }
}
