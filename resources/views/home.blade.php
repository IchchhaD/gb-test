@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <h3>Welcome {{ Auth::user()->name }} !</h3>
					<hr/>
					<h4>Your Assignments</h4>
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>				
									<td>Subject Name</td>
									<td>Assignment Name</td>
									<td>Description</td>
									<td>Date Created</td>
									<td>Status</td>
									<td>Date Submitted</td>
								</tr>
							</thead>
							<tbody>
							@foreach($get_assignments as $i)
							<tr>
								<td>{{$i -> subject}}</td>
								<td>{{$i -> assignment_name}}</td>
								<td>{{$i -> assignment_desc}}</td>
								<td>{{$i -> date_created}}</td>				
								<td>{{$i -> status}}</td>
								<td>{{$i -> date_submit}}</td>			
								</td>
							</tr>
							@endforeach
							</tbody>
						</table>
					</div>
    </div>
</div>
@endsection
