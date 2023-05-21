<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Confection extends Model
{
    use HasFactory;

    protected $fillable = ['cname', 'type', 'prizewinning'];

    public function contents()
    {
        return $this->hasMany(Content::class, 'confid', 'id');
    }

    public function prices()
    {
        return $this->hasMany(Price::class, 'confid', 'id');
    }
}
