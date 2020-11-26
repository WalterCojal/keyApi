<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Coupon;

class CouponController extends Controller
{

    function store (Request $request) {
      $store = new Coupon;
      $store->customer = $request->customer;
      $store->number = $request->number;
      $store->event_id = $request->event_id;
      $store->status = $request->status;
      $store->save();

      $result = array(
          'success' => true,
          'error' => null,
          'data'  => $store
      );

      return $result;
    }

    function edit (Request $request) {
      $store = Coupon::find($request->id);
      $store->status = $request->status;
      $store->save();

      $result = array(
          'success' => true,
          'error' => null,
          'data'  => $store
      );

      return $result;
    }

    function list (Request $request) {
      $list = Coupon::where('event_id', $request->event_id)->get();

      $result = array(
          'success' => true,
          'error' => null,
          'data'  => $list
      );

      return $result;
    }

}
