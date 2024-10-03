<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Action extends Model
{
    protected $table = 'actions';
   

    public function entidad()
    {
        return $this->belongsTo(Entity::class ,'entity_id');
    }

    public function localidad()
    {
        return $this->belongsTo(Localidad::class);
    }
}
