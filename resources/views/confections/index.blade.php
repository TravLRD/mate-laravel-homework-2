@extends('layouts.crud')

@section('content')
<form action="{{ route('confections.filter') }}" method="get" class="needs-validation">
  <div class="form-group">
    <label for="cname">Confection Name</label>
    <input type="text" name="cname" id="cname" class="form-control" value="{{ request('cname') }}">
  </div>

  <div class="form-group">
    <label for="type">Confection Type</label>
    <select name="type[]" id="type" multiple class="form-control">
      @foreach($types as $type)
      <option value="{{ $type->type }}" {{ in_array($type->type, (array)request('type')) ? 'selected' : '' }}>
        {{ $type->type }}
      </option>
      @endforeach
    </select>
  </div>

  <div class="form-group">
    <div class="form-check">
      <input type="checkbox" name="prizewinning" id="prizewinning" value="1" class="form-check-input" {{ request('prizewinning') ? 'checked' : '' }}>
      <label class="form-check-label" for="prizewinning">Prizewinning</label>
    </div>
  </div>

  <div class="form-group">
    <label>Free From Content</label><br>
    @foreach($contents as $content)
    <div class="form-check form-check-inline">
      <input type="checkbox" name="free[]" id="free_{{ $content->free }}" value="{{ $content->free }}" class="form-check-input" {{ in_array($content->free, (array)request('free')) ? 'checked' : '' }}>
      <label class="form-check-label" for="free_{{ $content->free }}">{{ $content->free }}</label>
    </div>
    @endforeach
  </div>

  <div class="form-group">
    <label for="min_price">Price Range</label>
    <div class="input-group">
      <span class="input-group-prepend">
        <span class="input-group-text">$</span>
      </span>
      <input type="number" name="min_price" id="min_price" class="form-control" placeholder="Minimum price" value="{{ request('min_price') }}">
      <span class="input-group-prepend input-group-append">
        <span class="input-group-text">-</span>
      </span>
      <input type="number" name="max_price" id="max_price" class="form-control" placeholder="Maximum price" value="{{ request('max_price') }}">
    </div>
  </div>

  <div class="form-group">
    <label for="unit">Unit</label>
    <select name="unit[]" id="unit" multiple class="form-control">
      @foreach($units as $unit)
      <option value="{{ $unit->unit }}" {{ in_array($unit->unit, (array)request('unit')) ? 'selected' : '' }}>
        {{ $unit->unit }}
      </option>
      @endforeach
    </select>
  </div>

  <button type="submit" class="btn btn-primary">Filter</button>
</form>




<h2 class="mb-5 mt-5">Confections</h2>
<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Prizewinning</th>
      <th>Free From Content</th>
      <th>Price</th>
      <th>Unit</th>
    </tr>
  </thead>
  <tbody>
    @foreach($confections as $confection)
    <tr>
      <td>{{ $confection->cname }}</td>
      <td>{{ $confection->type }}</td>
      <td>{{ $confection->prizewinning ? 'Yes' : 'No' }}</td>
      <td>
        @if ($confection->contents !== null && $confection->contents->isNotEmpty())
        @foreach ($confection->contents as $content)
        {{ $content->free }},
        @endforeach
        @endif
      </td>
      <td>
        @if ($confection->prices !== null && $confection->prices->isNotEmpty())
        {{ number_format($confection->prices[0]->price, 0, ',', ' ') }} HUF
        @endif
      </td>
      <td>
        @if ($confection->prices !== null && $confection->prices->isNotEmpty())
        {{ $confection->prices[0]->unit }}
        @endif
      </td>
    </tr>
    @endforeach
  </tbody>
</table>


@endsection

@push('styles')
<!-- Add your custom styles here -->
@endpush

@push('scripts')
<!-- Add your custom scripts here -->
@endpush