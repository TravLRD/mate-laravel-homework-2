<?php

namespace App\Http\Controllers;

use App\Models\Price;
use Illuminate\Http\Request;

class PriceController extends Controller
{
  public function index(Request $request)
  {
    $query = Price::query();

    if ($request->filled('price_min')) {
      $query->where('price', '>=', $request->price_min);
    }

    if ($request->filled('price_max')) {
      $query->where('price', '<=', $request->price_max);
    }

    if ($request->filled('unit')) {
      $query->whereIn('unit', $request->unit);
    }

    $prices = $query->get();

    return view('prices.index', compact('prices'));
  }
}
