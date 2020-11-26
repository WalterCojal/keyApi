<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    $fillable = ["id",	"customer",	"number",	"event_id",	"status"];
}
