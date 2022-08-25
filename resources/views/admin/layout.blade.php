<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Elbrit Central | @yield('title') </title>
  <link rel="stylesheet" href="{{ asset('css/app.css') }}">
  <link rel="stylesheet" href="{{ asset('css/summernote-bs4.min.css') }}">
  <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
  
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    <!-- include libraries(jQuery, bootstrap) -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
  
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>

</head>
<!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">

    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">            
      <li class="nav-item" style="background-color: #eff2f7;padding: 0.5rem 1rem;font-weight:500;margin-right: 2rem;">
        <form action="{{route('logout')}}" method="post">
          @csrf
          <a href="javascript:{}" onclick="this.closest('form').submit();return false;" style="color:#262930"><i class="fa-solid fa-right-from-bracket"></i>  Logout</a>
        </form>
      </li>
      <li class="nav-item">
        <div class="user-panel d-flex">
          <div class="image">
            <img src="/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
          </div>          
          <div class="info">
            <a href="{{route('admin.index')}}" class="d-block" style="color: #262930;font-weight:500;">{{Auth::user()->name}}</a>            
          </div>
        </div>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

      <!-- Main Sidebar Container -->
      <aside class="main-sidebar">
        <!-- Brand Logo -->
        <a href="/dashboard" class="brand-link">
          <img src="/dist/img/logo.png" alt="Elbrit Central Logo" style="width:65px;margin-left: 10%;">
        </a>

        <!-- Sidebar -->
        <div class="sidebar">     

          <!-- Sidebar Menu -->
          <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
              <!-- Add icons to the links using the .nav-icon class
                  with font-awesome or any other icon font library -->
              <li class="nav-item {{ request()->is('dashboard') ? 'menu-open' : '' }}">
                <a href="#" class="nav-link {{ request()->is('dashboard') ? 'active' : '' }}">
                  <i class="nav-icon fas fa-tachometer-alt"></i>
                  <p>
                    Dashboard
                  </p>
                </a>
              </li>
              <li class="nav-item {{ request()->is('employees*') ? 'menu-open' : '' }}">
                <a href="#" class="nav-link {{ request()->is('employees*') ? 'active' : '' }}">
                  <i class="nav-icon fas fa-users"></i>
                  <p>
                    Employee
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="{{route('employees.index')}}" class="nav-link {{ request()->is('employees') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Employee List</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{route('employees.create')}}" class="nav-link {{ request()->is('employees/create') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Add New Employee</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="nav-item {{ request()->is('teams*') ? 'menu-open' : '' }}">
                <a href="#" class="nav-link {{ request()->is('teams*') ? 'active' : '' }}">
                  <i class="nav-icon fas fa-table"></i>
                  <p>
                    Teams
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="{{route('teams.index')}}" class="nav-link {{ request()->is('teams') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Teams</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{route('teams.create')}}" class="nav-link {{ request()->is('teams/create') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Add New Team</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="nav-item {{ request()->is('walls*') ? 'menu-open' : '' }}">
                <a href="#" class="nav-link {{ request()->is('walls*') ? 'active' : '' }}">
                  <i class="nav-icon fas fa-table"></i>
                  <p>
                    Walls
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="{{route('posts.index')}}" class="nav-link {{ request()->is('walls') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Walls</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{route('posts.create')}}" class="nav-link {{ request()->is('walls/create') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Create New Wall</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="nav-item {{ request()->is('prices*') ? 'menu-open' : '' }}">
                <a href="#" class="nav-link {{ request()->is('prices*') ? 'active' : '' }}">
                  <i class="nav-icon fas fa-table"></i>
                  <p>
                    Price List
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="{{route('prices.index')}}" class="nav-link {{ request()->is('prices') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Price List</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{route('prices.create')}}" class="nav-link {{ request()->is('prices/create') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Add New Price</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="nav-item {{ request()->is('products*') ? 'menu-open' : '' }}">
                <a href="#" class="nav-link {{ request()->is('products*') ? 'active' : '' }}">
                  <i class="nav-icon fas fa-table"></i>
                  <p>
                    Products
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="{{route('products.index')}}" class="nav-link {{ request()->is('products') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Products</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="{{route('products.create')}}" class="nav-link {{ request()->is('products/create') ? 'active' : '' }}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Create New Product</p>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </nav>
          <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
      </aside>

        @yield('content')

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
          <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->

        <!-- Main Footer -->
        <footer class="main-footer">
          <strong>&copy; 2022 <a href="/">Elbrit Central</a>.</strong>
          All rights reserved
        </footer>
      </div>
      <!-- ./wrapper -->

      <!-- REQUIRED SCRIPTS -->
      <script src="{{ asset('js/app.js') }}"></script>

      <script src="{{ asset('js/summernote-bs4.min.js') }}"></script>
      <script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>

      @yield('scripts')
  </body>
</html>
