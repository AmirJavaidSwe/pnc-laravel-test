@extends('layouts.app')
@section('content')
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">@lang('sentence.all_companies')</div>
				<div class="card-body">
					@if (session('status'))
					<div class="alert alert-{{ session('message_type') }}" role="alert">
						{{ session('status') }}
					</div>
					@endif
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover table-sm">
							<caption>{{ __('sentence.list_of_companies') }}</caption>
							<thead class="thead-light">
								<tr>
									<th>#</th>
									<th>{{ __('sentence.company_name') }}</th>
									<th>{{ __('sentence.company_email') }}</th>
									<th>{{ __('sentence.company_website') }}</th>
									<th>{{ __('sentence.company_logo') }}</th>
									<th>{{ __('sentence.actions') }}</th>
								</tr>
							</thead>
							<tbody>
								@foreach($companies as $company)
								<tr>
									<td>{{ ++$loop->index }}</td>
									<td>{{ $company->name }}</td>
									<td>{{ $company->email }}</td>
									<td>{{ $company->website }}</td>
									<td>
										@if(!empty($company->logo))
										<a href="javascript:;" data-toggle='modal' data-target='#myModal-{{ $company->id }}' title="{{ __('sentence.click_to_preview_logo') }}"><img src="{{ asset('storage/image.png') }}" alt="{{ __('sentence.dummy_image') }}"></a>
										@include('companies.includes.details')
										@else
										{{ __('sentence.no_logo_present') }}
										@endif
									</td>
									<td>
										<a href="{{ route('companies.edit', set_secure_id($company->id)) }}" title='{{ __('sentence.edit') }}'>
											<button type='button' class='btn btn-xs btn-warning'>
												<i class='fa fa-edit'></i>
											</button>
										</a>
										<a title='{{ __('sentence.delete') }}' class='company-delete' data-form_id='company-delete-{{ set_secure_id($company->id) }}'>
											<button type='button' class='btn btn-xs btn-danger'>
												<i class='fa fa-trash trash'></i>
											</button>
										</a>
										<form id='company-delete-{{ set_secure_id($company->id) }}' action="{{ route('companies.destroy', set_secure_id($company->id)) }}" method='POST' style='display: none;'>
											{!! csrf_field() !!}
											@method('DELETE')
											<input type='hidden' name='delete_id' value="{{ set_secure_id($company->id) }}">
										</form>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
						{{ $companies->links() }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
