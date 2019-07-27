@extends('layouts.app')
@section('content')
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">{{ __('sentence.all_employees') }}</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover table-sm">
							<caption>{{ __('sentence.list_of_employees') }}</caption>
							<thead class="thead-light">
								<tr>
									<th>#</th>
									<th>{{ __('sentence.first_name') }}</th>
									<th>{{ __('sentence.last_name') }}</th>
									<th>{{ __('sentence.email') }}</th>
									<th>{{ __('sentence.phone') }}</th>
									<th>{{ __('sentence.company_name') }}</th>
									<th>{{ __('sentence.actions') }}</th>
								</tr>
							</thead>
							<tbody>
								@foreach($employees as $employee)
								<tr>
									<td>{{ ++$loop->index }}</td>
									<td>{{ $employee->first_name }}</td>
									<td>{{ $employee->last_name }}</td>
									<td>{{ $employee->email }}</td>
									<td>{{ $employee->phone }}</td>
									<td>{{ $employee->company->name ?? '' }}</td>
									<td>
										<a href="{{ route('employees.edit', set_secure_id($employee->id)) }}" title='{{ __('sentence.edit') }}'>
											<button type='button' class='btn btn-xs btn-warning'>
												<i class='fa fa-edit'></i>
											</button>
										</a>
										<a title='{{ __('sentence.delete') }}' class='employee-delete' data-form_id='employee-delete-{{ set_secure_id($employee->id) }}'>
											<button type='button' class='btn btn-xs btn-danger'>
												<i class='fa fa-trash trash'></i>
											</button>
										</a>
										<form id='employee-delete-{{ set_secure_id($employee->id) }}' action="{{ route('employees.destroy', set_secure_id($employee->id)) }}" method='POST' style='display: none;'>
											{!! csrf_field() !!}
											@method('DELETE')
											<input type='hidden' name='delete_id' value="{{ set_secure_id($employee->id) }}">
										</form>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
						{{ $employees->links() }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
