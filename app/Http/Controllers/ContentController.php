<?php

namespace App\Http\Controllers;

use App\Models\Content;
use Illuminate\Http\Request;

class ContentController extends Controller
{
  public function index(Request $request)
  {
    $query = Content::query();

    if ($request->filled('free')) {
      $query->whereIn('free', $request->free);
    }

    $contents = $query->get();

    return view('contents.index', compact('contents'));
  }
}
