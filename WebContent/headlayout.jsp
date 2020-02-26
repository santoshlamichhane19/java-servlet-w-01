<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Head - Layout Document Start  -->
<!DOCTYPE html>
<html>

<head>


    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        .wrapper {
            margin-top: 56px;
        }
    </style>
    <title>Bug Management</title>
</head>

<body class="text-monospace">


    <!-- Navigation Start  -->

    <nav>

        <div class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="container-fluid">
                <a href="#" class="navbar-brand">
                    <i class="fa fa-bug fa-lg text-warning mr-4 "></i>Bug Management</a>
                <div class="ml-0">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="text-light" href="#">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <a class="text-light"><i
                                    class="fa fa-user fa-lg text-warning mr-2 ml-4 "></i>${user.username}</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </nav>

    <!-- Navigation End  -->