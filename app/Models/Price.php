<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Price extends Model
{
    use HasFactory;

    protected $fillable = ['confid', 'price', 'unit'];

    public function confection()
    {
        return $this->belongsTo(Confection::class, 'confid', 'id');
    }
}
