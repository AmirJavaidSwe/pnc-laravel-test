<!-- The Modal -->
<div class="modal" id="myModal-{{ $company->id }}">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">{{ __('sentence.company_logo_preview') }}</h5>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <img src="{{ asset('storage/'.$company->logo) }}" alt="{{ __('sentence.company_logo') }}">
      </div>
    </div>
  </div>
</div>