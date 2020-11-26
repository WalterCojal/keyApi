<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    $fillable = ["id",	"name",	"description",	"quantity",	"status"];
}
