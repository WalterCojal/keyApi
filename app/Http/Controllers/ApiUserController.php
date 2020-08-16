<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Model\User;

class ApiUserController extends Controller
{
    
    public function getUserList() {
        
        $userList = DB::table('user')
            ->get();

        $result = array(
            'success' => true,
            'error' => null,
            'data'  => $userList
        );

        return $result;

    }

}
