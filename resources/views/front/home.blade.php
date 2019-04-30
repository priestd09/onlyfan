@extends('front.layout.head')
@section('description')
This is Personal Details
@endsection
@section('title')
OnlyFans
@endsection
@section('contents')
<div class="clear"></div>
<div class="section-five-row">
<div class="container">
<div class="col-md-9">
<div class="dashboard-comment-row">
<div class="dash-comment-box">
<textarea placeholder="Compose Post..."></textarea>
</div>
<div class="dash-submit-btns">
<div class="dash-left">
<img src="{{ asset('frontassets/images/dash-img5.png') }}" alt="" />
</div>
<div class="dash-right">
<p><a href="javascript:void(0);">Post</a></p>
</div>
</div>
</div>
<div class="noti-profiles">
<div class="notiprofile-row-1">
<div class="profile-row-1-left">
<div class="noti-thumb">
<a href="javascript:void(0);"><img src="{{ asset('frontassets/images/noti-icon12.png') }}" alt="" /></a>
</div>
<div class="noti-detail">
<div class="noti-name">
<p>John Deo</p>
</div>
<div class="noti-id">
<p>@johndeo1</p>
</div>
</div>
</div>
<div class="profile-row-1-right">
<div class="time-duration">
<p>few seconds ago</p>
</div>
</div>
<div class="share-icons">
<img src="{{ asset('frontassets/images/noti-icon9.png') }}" alt="" /> 
</div>
<div class="noti-comments">
<div class="comments">
<p>Hi how are you?</p>
</div>
<div class="noti-icons">
<div class="wishlist">
<p>5</p>
</div>
<div class="noti-drop">
<p>10</p>
</div>
</div>
</div>
</div>
<div class="notiprofile-row-1">
<div class="profile-row-1-left">
<div class="noti-thumb">
<a href="javascript:void(0);"><img src="{{ asset('frontassets/images/noti-icon13.png') }}" alt="" /></a>
</div>
<div class="noti-detail">
<div class="noti-name">
<p>Mark Bruke</p>
</div>
<div class="noti-id">
<p>@markbruke_90</p>
</div>
</div>
</div>
<div class="profile-row-1-right">
<div class="time-duration">
<p>few seconds ago</p>
</div>
</div>
<div class="share-icons">
<img src="{{ asset('frontassets/images/noti-icon9.png') }}" alt="" /> 
</div>
<div class="noti-comments">
<div class="comments">
<p>Hi how are you?</p>
</div>
<div class="noti-icons">
<div class="wishlist">
<p>5</p>
</div>
<div class="noti-drop">
<p>10</p>
</div>
</div>
</div>
</div>
</div>
</div>
@include('front.layout.sidebar')
</div>
</div>
</section>
@endsection