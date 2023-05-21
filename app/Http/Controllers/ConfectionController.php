<?php

namespace App\Http\Controllers;

use App\Models\Confection;
use App\Models\Content;
use App\Models\Price;
use Illuminate\Http\Request;


class ConfectionController extends Controller
{
  public function index()
  {
    $confections = Confection::with('contents', 'prices')->get();

    $types = Confection::select('type')->distinct()->get();
    $contents = Content::select('free')->distinct()->get();
    $units = Price::select('unit')->distinct()->get();

    return view('confections.index', compact('confections', 'types', 'contents', 'units'));
  }

  public function filter(Request $request)
  {
    $confections = Confection::with('contents', 'prices');

    if ($request->cname) {
      $confections->where('cname', 'LIKE', "%{$request->cname}%");
    }

    if ($request->type) {
      $confections->whereIn('type', $request->type);
    }

    if ($request->prizewinning) {
      $confections->where('prizewinning', true);
    }

    if ($request->free) {
      $confections->whereHas('contents', function ($query) use ($request) {
        $query->whereIn('free', $request->free);
      });
    }

    if ($request->min_price && $request->max_price) {
      $confections->whereHas('prices', function ($query) use ($request) {
        $query->whereBetween('price', [$request->min_price, $request->max_price]);
      });
    }

    if ($request->unit) {
      $confections->whereHas('prices', function ($query) use ($request) {
        $query->whereIn('unit', $request->unit);
      });
    }

    $confections = $confections->get();

    $types = Confection::select('type')->distinct()->get();
    $contents = Content::select('free')->distinct()->get();
    $units = Price::select('unit')->distinct()->get();

    return view('confections.index', compact('confections', 'types', 'contents', 'units'));
  }
}
