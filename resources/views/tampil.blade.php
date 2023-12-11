@extends('layouts.main')
@section ('content')


<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Web Otomotif</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
        <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">
                
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">

        <link href="assets/css/bootstrap-icons.css" rel="stylesheet">

        <link href="assets/css/templatemo-festava-live.css" rel="stylesheet">
        
<!--

TemplateMo 583 Festava Live

https://templatemo.com/tm-583-festava-live

-->
    </head>
    
    <body>

        <main>

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container">

                    <a class="text-white" href="">
                      
                    </a>
    
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
    
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_1">Home</a>
                            </li>
    
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_2">Service</a>
                            </li>
    
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_3">Blog</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_4">About</a>
                            </li>

                    </div>
                </div>
            </nav>
            

	<!-- CONTENT -->
	<section id="content">

    <form action="tampil/search" method="GET">


    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div>
                </div>
				<div class="text-dark">
				<h3 class="text-center my-4"> HALAMAN USER </h3>
				</div>
                <div class="card border-0 shadow-sm rounded">
                    <div class="card-body">

                    <form action="tampil/search" method="GET">
                    <div class="row mb-3">
                      <label for="search" class="col-sm-2 col-form-label">Cari Data</label>
                             <div class="col-sm-10">
                                  <input type="text" class="form-control form-control-sm" value="" placeholder="Pleace Input key for search data.." name="search" autofocus value="{{ old('search') }}">
                                            </div>
                                            </div>
                                            </form>
                        
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                      <th scope="col">GAMBAR</th>
                                    <th scope="col">JUDUL</th>
                                    <th scope="col">CONTENT</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($posts as $post)
                                <tr>
                                    <td class="text-center">
                                        <img src="{{asset('/storage/posts/'.$post->image) }}" class="rounded" style="width:150px">
                                    </td>
                                    <td>{{ $post->title }}</td>
                                    <td>{!! $post->content !!}</td>
                                   
                                </tr>
                                @empty
                                    <div class="alert alert-danger">
                                        Data Post belum Tersedia
                                    </div>
                                @endforelse
                            </tbody>
                        </table>
                        {{ $posts->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>


	
</body>
</html>