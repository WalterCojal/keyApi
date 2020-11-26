<?php

namespace App\Http\Controllers;

use App\Http\Controllers\CouponController;
use Illuminate\Http\Request;
use App\Event;
use App\Coupon;

class EventController extends Controller
{

    function store (Request $request) {
      $event = new Event;
      $event->name = $request->name;
      $event->description = $request->description;
      $event->quantity = $request->quantity;
      $event->status = $request->status;
      $event->save();

      if ($request->quantity > 0) {
        $couponController = new CouponController;
        for ($i=0; $i < $request->quantity; $i++) {
          $input = new Request();
          $input->setMethod("POST");
          $input->request->add([
            'customer' => 'Sin asignar',
            'number'  => $i+1,
            'event_id'  => $event->id,
            'status'  => 1
            ]);
          $couponController->store($input);
        }
      }

      $result = array(
          'success' => true,
          'error' => null,
          'data'  => $event
      );

      return $result;
    }

    function list (Request $request) {
      $list = Event::all();

      $result = array(
          'success' => true,
          'error' => null,
          'data'  => $list
      );

      return $result;
    }

}
