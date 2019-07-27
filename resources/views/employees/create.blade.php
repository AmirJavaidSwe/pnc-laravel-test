@extends('layouts.app')
@section('content')
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-12">
			<div class="card">
				@if(isset($data))
				<div class="card-header">{{ __('sentence.edit_employee') }} <b>{{ $data->name }}</b>
				@else
				<div class="card-header">{{ __('sentence.create_new_employee') }}
				@endif
				</div>
				<div class="card-body">
					<h6 class="card-subtitle"> {!! __('sentence.all_fields_marked_with_asterisk_are_required') !!} </h6>
					<br>
					@if (isset($errors) && $errors->any())
					<div class="alert alert-danger">
						<ul>
							@foreach ($errors->all() as $error)
							<li>{{ __($error) }}</li>
							@endforeach
						</ul>
					</div>
					@endif
					@if(isset($data))
					<form enctype="multipart/form-data" class="form_form m-t-40" method="post" action="{{ route('employees.update', set_secure_id($data->id)) }}" novalidate>
						<input type="hidden" name="edit_id" value="{{ set_secure_id($data->id) }}">
            {!! csrf_field() !!}
            @method('PUT')
					@else
					<form enctype="multipart/form-data" class="form_form m-t-40" method="post" action="{{ route('employees.store') }}" novalidate>
            {!! csrf_field() !!}
					@endif
						<div class="p-t-10">
							<div class="form-group">
	              <label>{{ __('sentence.first_name') }} <span class="text-danger"> *</span></label>
                <input name="first_name" type="text" class="form-control" value="{{ old('first_name') ?? $data->first_name ?? '' }}">
              </div>
              <div class="form-group">
	              <label>{{ __('sentence.last_name') }} <span class="text-danger"> *</span></label>
                <input name="last_name" type="text" class="form-control" value="{{ old('last_name') ?? $data->last_name ?? '' }}">
              </div>
              <div class="form-group">
	              <label>{{ __('sentence.email') }} <span class="text-danger"> *</span></label>
                <input name="email" type="text" class="form-control" value="{{ old('email') ?? $data->email ?? '' }}">
              </div>
              <div class="form-group">
	              <label>{{ __('sentence.phone') }} <span class="text-danger"> *</span></label>
                <input name="phone" type="text" class="form-control" value="{{ old('phone') ?? $data->phone ?? '' }}">
              </div>
              <div class="form-group">
	              <label>{{ __('sentence.company') }} <span class="text-danger"> *</span></label>
	              <select name="company" class="form-control" id="select2">
	              	<option value="">{{ __('sentence.please_select_a_company') }}</option>
	              	@foreach($companies as $company)
	              	<option @if(isset($data) && $company->id == $data->company_id) selected @endif value="{{ $company->id }}">{{ $company->name }}</option>
	              	@endforeach
	              </select>
              </div>
						</div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary">{{ __('sentence.submit') }}</button>
              &nbsp;&nbsp;&nbsp;&nbsp;
            	<a href="{{ url()->previous() }}" class="btn btn-light"><i class="fa fa-back"></i> {{ __('sentence.go_back') }}</a>
            </div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection