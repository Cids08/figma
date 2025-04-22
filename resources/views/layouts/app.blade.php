<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>

    <!-- Load CSS using Vite -->
    @vite(['resources/css/app.css'])
</head>
<body>

    <!-- Include Navbar Partial -->
    @include('components.navbar')

    <!-- Page Content -->
    <main>
        @yield('content')
    </main>

</body>
</html>
