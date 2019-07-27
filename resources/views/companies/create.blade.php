@extends('layouts.app')
@section('content')
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-12">
			<div class="card">
				@if(isset($data))
				<div class="card-header">{{ __('sentence.edit_company') }} <b>{{ $data->name }}</b>
					@else
					<div class="card-header">{{ __('sentence.create_new_company') }}
						@endif
					</div>
					<div class="card-body">
						<h6 class="card-subtitle"> {!! __('sentence.all_fields_marked_with_asterisk_are_required') !!}. </h6>
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
						<form enctype="multipart/form-data" class="form_form m-t-40" method="post" action="{{ route('companies.update', set_secure_id($data->id)) }}" novalidate>
							<input type="hidden" name="edit_id" value="{{ set_secure_id($data->id) }}">
							{!! csrf_field() !!}
							@method('PUT')
							@else
							<form enctype="multipart/form-data" class="form_form m-t-40" method="post" action="{{ route('companies.store') }}" novalidate>
								{!! csrf_field() !!}
								@endif
								<div class="p-t-10">
									<div class="form-group">
										<label>{{ __('sentence.name') }} <span class="text-danger"> *</span></label>
										<input name="name" type="text" class="form-control" value="{{ old('name') ?? $data->name ?? '' }}">
									</div>
									<div class="form-group">
										<label>{{ __('sentence.email') }} <span class="text-danger"> *</span></label>
										<input name="email" type="text" class="form-control" value="{{ old('email') ?? $data->email ?? '' }}">
									</div>
									<div class="form-group">
										<label>{{ __('sentence.website') }} <span class="text-danger"> *</span></label>
										<input name="website" type="text" class="form-control" value="{{ old('website') ?? $data->website ?? '' }}">
									</div>
									<div class="form-group col-md-5 d-inline-block p-0 align-top">
										<label>{{ __('sentence.logo') }} <span class="text-danger"> *</span><br><small><span class="text-danger">{{ __('sentence.max_allowed_size') }} 100X100</span></small></label>
										<input type='file' name="logo" id="imgInp" class="form-control">
										<input type='hidden' name="old_logo" id="" class="old_logo" value="{{ (isset($data->logo)) ? asset('storage/'.$data->logo) : '' }}">
									</div>
									<div class="form-group col-md-5 d-inline-block" style="margin-left: 100px;">
										@if(old('logo') != null || (!empty($data->logo) && \Storage::disk('local')->exists('public/'.$data->logo)))
										<img id="img_preview_old" class="img_pre_old" src="{{ old('logo') ?? $data->logo ? asset('storage/'.$data->logo) : '' }}" alt="{{ __('sentence.your_image') }}" style="width: 100px; height: 100px;" />
										<br>
										<span class="img_pre_old"> {{ __('sentence.your_uploaded_image') }}</span>
										<img id="img_preview" class="img_pre d-none" src="" alt="{{ __('sentence.your_image') }}" style="width: 100px; height: 100px;" />
										<br>
										<span class="img_pre d-none"> {{ __('sentence.new_image') }}</span>
										@else
										<img id="img_preview" class="img_pre d-none" src="" alt="{{ __('sentence.your_image') }}" style="width: 100px; height: 100px;" />
										<br>
										<span class="img_pre d-none"> {{ __('sentence.new_image') }}</span>
										@endif
									</div>
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-primary">{{ __('sentence.submit') }}</button>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="{{ url()->previous() }}" class="btn btn-light"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; {{ __('sentence.go_back') }}</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		@endsection