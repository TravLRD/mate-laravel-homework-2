<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    use HasFactory;

    protected $fillable = ['confid', 'free'];

    public function confection()
    {
        return $this->belongsTo(Confection::class, 'confid', 'id');
    }
}
