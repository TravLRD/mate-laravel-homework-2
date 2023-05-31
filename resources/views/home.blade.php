@extends('layouts.app')

@section('title', 'Edit Blog Post')

@section('content')
<!-- Hero Section -->
<header class="hero">
    <div class="container my-5">
        <h1 class="h1">Welcome to Confectionery Delights</h1>
        <p class="lead">Indulge in the sweet delights and remember the taste of the ice-cream, the smell of the cakes!</p>
        <img class="mw-100" src="image.jpeg" alt="">
    </div>
</header>

<!-- Main Section -->
<main>
    <div class="container my-5">
        <!-- Cakes Section -->
        <section id="cakes">
            <h2 class="h3">Our Cakes</h2>
            <p>Our cakes are made with love and passion. They are the perfect choice for your special occasions.</p>
            <!-- Add a carousel or image grid here -->
        </section>

        <!-- Ice-cream Section -->
        <section id="ice-cream" class="mt-5">
            <h2 class="h3">Our Ice-creams</h2>
            <p>Our ice-creams are crafted from the finest ingredients. Experience the joy of ice-cream like never before.</p>
            <!-- Add a carousel or image grid here -->
        </section>

        <!-- Add more sections as required -->
    </div>
</main>

<!-- Footer Section -->
<footer class="footer bg-dark text-white text-center py-3">
    <div class="container">
        <p>&copy; 2023 Confectionery Delights. All Rights Reserved.</p>
    </div>
</footer>

@endsection