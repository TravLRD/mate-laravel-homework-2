<?php

namespace App\Http\Controllers;

use App\Models\Price;


class ChartController extends Controller
{
  public function index()
  {
    $prices = Price::all()->pluck('price')->toArray();

    return view('chart', compact('prices'));
  }
}
