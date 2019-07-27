<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>{{ config('app.name', 'Laravel') }}</title>
  <!-- Fonts -->
  <link rel="dns-prefetch" href="//fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
  <!-- Styles -->
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
  <div id="app">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
      <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
          {{ config('app.name', 'Laravel') }}
        </a>
        @if(auth()->user())
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item dropdown" style="top: 1px">
              <a id="navbarDropdown1" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                @lang('sentence.companies') <span class="caret"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown1">
                <a class="dropdown-item" href="{{ route('companies.index') }}">@lang('sentence.all_companies')</a>
                <a class="dropdown-item" href="{{ route('companies.create') }}">@lang('sentence.create_new_company')</a>
              </div>
            </li>
            <li class="nav-item dropdown" style="top: 1px">
              <a id="navbarDropdown2" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                @lang('sentence.employees') <span class="caret"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown2">
                <a class="dropdown-item" href="{{ route('employees.index') }}">@lang('sentence.all_employees')</a>
                <a class="dropdown-item" href="{{ route('employees.create') }}">@lang('sentence.create_new_employee')</a>
              </div>
            </li>
          </ul>
        </div>
        @endif
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Left Side Of Navbar -->
          <ul class="navbar-nav mr-auto">
          </ul>
          <!-- Right Side Of Navbar -->
          <ul class="navbar-nav ml-auto">
            <!-- Authentication Links -->
            <li class="nav-item dropdown">
              <a id="navbarDropdown_lang" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                {{ strtoupper(\App::getLocale()) }} <span class="caret"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown_lang">
                <?php
                @$files = glob(resource_path('lang/*'));
                if(!empty($files)){
                  foreach($files as $file){
                    if(\App::getLocale() == $file) continue;
                    $file = explode('/', $file);
                    $file = end($file); ?>
                    <a class="dropdown-item" href="" onclick="event.preventDefault(); document.getElementById('change_lang_{{ $file }}').submit();">{{ strtoupper(__($file)) }}</a>
                    <form id="change_lang_{{ $file }}" action="{{ route('change_lang') }}" method="POST" style="display: none;">
                      @csrf
                      <input type="hidden" name="lang" value="{{ $file }}">
                    </form>
                    <?php
                  }
                }
                ?>
              </div>
            </li>
            @guest
            <li class="nav-item">
              <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
            </li>
            @if (Route::has('register'))
            <!-- <li class="nav-item">
            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
          </li> -->
          @endif
          @else
          <li class="nav-item dropdown">
            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
              {{ Auth::user()->name }} <span class="caret"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="{{ route('logout') }}"
              onclick="event.preventDefault();
              document.getElementById('logout-form').submit();">
              {{ __('sentence.Logout') }}
              {{-- {{ __('Logout') }} --}}
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
              @csrf
            </form>
          </div>
        </li>
        @endguest
      </ul>
    </div>
  </div>
</nav>
<main class="py-4">
  @yield('content')
</main>
</div>
<!-- Scripts -->
<script src="{{ asset('js/app.js') }}" type="text/javascript"></script>
<script type="text/javascript">
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        $('#img_preview').attr('src', e.target.result);
        $('.img_pre_old').addClass('d-none');
        $('.img_url').val(e.target.result);
        $('.img_pre').removeClass('d-none');
      }
      reader.readAsDataURL(input.files[0]);
    } else {
      $('#img_preview').attr('src', '');
      var src = $('#img_preview_old').attr('src');
      $('.img_pre_old').removeClass('d-none');
      $('.img_url').val(src);
      $('.img_pre').addClass('d-none');
    }
  }
  $("#imgInp").change(function() {
    readURL(this);
  });
  $(document).on('click', '.company-delete, .employee-delete', function(event) {
    event.preventDefault();
    var form_id = $(this).data('form_id');
    $.confirm({
      title: '{{ __("sentence.confirm") }}!',
      content: '{{ __("sentence.are_you_sure") }} ??',
      buttons: {
        confirm: {
          btnClass: 'btn-red',
          action: function(){
            $('#'+form_id).submit();
          }
        },
        cancel: function () {
        },
      }
    });
  });
</script>
<?php
$script_msg = "";
$msgs = get_all_msg_session();
foreach($msgs as $key => $val){
  $msg = htmlspecialchars($val['msg'], ENT_QUOTES);
  $val['title'] = __('sentence.'.$val['title']);
  $script_msg .= 'show_alert("'.$val["title"].'", "'.$msg.'", "'.$val["type"].'");';
}
clear_msg_session();
?>
<script>
  function show_alert(title, msg, icn){
    $.toast({
      heading: title,
      text: msg,
      showHideTransition: 'fade',
      icon: icn,
      position: 'top-right',
      hideAfter: 6000,
      stack: 6
    })
  }
  $(document).ready(function(){
    <?php echo $script_msg; ?>
    $('#select2').select2();
  });
</script>
</body>
</html>