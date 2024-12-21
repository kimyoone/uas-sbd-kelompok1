@component('mail::message')
# Introduction

@php
 echo $data['title'];   
@endphp

@component('mail::button', ['url' => $data['url']])
    Aplikasi Proposal
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
