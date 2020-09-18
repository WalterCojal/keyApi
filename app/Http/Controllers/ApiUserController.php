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
            ->where('status', 1)
            ->select(DB::raw('id, name, icon, status'))
            ->get();

        $result = array(
            'success' => true,
            'error' => null,
            'data'  => $userList
        );

        return $result;
    }

    public function getMediaList($type, $userId) {
        if ($type == 0) {
            $error = array(
                'messageId' => 1,
                'message'   => 'Tipo de archivo incorrecto'
            );

            $result = array(
                'success' => false,
                'error' => $error,
                'data'  => null
            );

            return $result;
        }

        $gifList = DB::table('media')
            ->where('user_id', $userId)
            ->where('status', 1)
            ->where('type', $type)
            ->select(DB::raw('id, source'))
            ->get();

        $result = array(
            'success' => true,
            'error' => null,
            'data'  => $gifList
        );

        return $result;
    }

    public function getUserMedia($userId) {
        $list = DB::table('media')
            ->where('user_id', $userId)
            ->where('status', 1)
            ->select(DB::raw('id, source, type'))
            ->get();

        $result = array(
            'success' => true,
            'error' => null,
            'data'  => $list
        );

        return $result;
    }

}
