<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Vacation Manager register</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="robots" content="noindex, nofollow">
    <meta name="googlebot" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <script
            type="text/javascript"
            src="/js/lib/dummy.js"

    ></script>

    <link rel="stylesheet" type="text/css" href="/css/result-light.css">

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

    <style id="compiled-css" type="text/css">
        :root {
            --input-padding-x: 1.5rem;
            --input-padding-y: .75rem;
        }

        body {
            background: #007bff;
            background: linear-gradient(to right, #0062E6, #33AEFF);
        }

        .card-signin {
            border: 0;
            border-radius: 1rem;
            box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .card-signin .card-title {
            margin-bottom: 2rem;
            font-weight: 300;
            font-size: 1.5rem;
        }

        .card-signin .card-img-left {
            width: 45%;
            /* Link to your background image using in the property below! */
            background: scroll center url('images/backg.jpg');
            background-size: cover;
        }

        .card-signin .card-body {
            padding: 2rem;
        }

        .form-signin {
            width: 100%;
        }

        .form-signin .btn {
            font-size: 80%;
            border-radius: 5rem;
            letter-spacing: .1rem;
            font-weight: bold;
            padding: 1rem;
            transition: all 0.2s;
        }

        .form-label-group {
            position: relative;
            margin-bottom: 1rem;
        }

        .form-label-group input {
            height: auto;
            border-radius: 2rem;
        }

        .form-label-group>input,
        .form-label-group>label {
            padding: var(--input-padding-y) var(--input-padding-x);
        }

        .form-label-group>label {
            position: absolute;
            top: 0;
            left: 0;
            display: block;
            width: 100%;
            margin-bottom: 0;
            /* Override default `<label>` margin */
            line-height: 1.5;
            color: #495057;
            border: 1px solid transparent;
            border-radius: .25rem;
            transition: all .1s ease-in-out;
        }

        .form-label-group input::-webkit-input-placeholder {
            color: transparent;
        }

        .form-label-group input:-ms-input-placeholder {
            color: transparent;
        }

        .form-label-group input::-ms-input-placeholder {
            color: transparent;
        }

        .form-label-group input::-moz-placeholder {
            color: transparent;
        }

        .form-label-group input::placeholder {
            color: transparent;
        }

        .form-label-group input:not(:placeholder-shown) {
            padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
            padding-bottom: calc(var(--input-padding-y) / 3);
        }

        .form-label-group input:not(:placeholder-shown)~label {
            padding-top: calc(var(--input-padding-y) / 3);
            padding-bottom: calc(var(--input-padding-y) / 3);
            font-size: 12px;
            color: #777;
        }

        .btn-google {
            color: white;
            background-color: #ea4335;
        }

        .btn-facebook {
            color: white;
            background-color: #3b5998;
        }

        /* EOS */
    </style>

    <script id="insert"></script>


    <script src="/js/stringify.js?e4c824865ff9a849741c86222301ae0463b08958" charset="utf-8"></script>
    <script>
        const customConsole = (w) => {
            const pushToConsole = (payload, type) => {
                w.parent.postMessage({
                    console: {
                        payload: stringify(payload),
                        type:    type
                    }
                }, "*")
            }

            w.onerror = (message, url, line, column) => {
                // the line needs to correspond with the editor panel
                // unfortunately this number needs to be altered every time this view is changed
                line = line - 70
                if (line < 0){
                    pushToConsole(message, "error")
                } else {
                    pushToConsole(`[${line}:${column}] ${message}`, "error")
                }
            }

            let console = (function(systemConsole){
                return {
                    log: function(){
                        let args = Array.from(arguments)
                        pushToConsole(args, "log")
                        systemConsole.log.apply(this, args)
                    },
                    info: function(){
                        let args = Array.from(arguments)
                        pushToConsole(args, "info")
                        systemConsole.info.apply(this, args)
                    },
                    warn: function(){
                        let args = Array.from(arguments)
                        pushToConsole(args, "warn")
                        systemConsole.warn.apply(this, args)
                    },
                    error: function(){
                        let args = Array.from(arguments)
                        pushToConsole(args, "error")
                        systemConsole.error.apply(this, args)
                    },
                    system: function(arg){
                        pushToConsole(arg, "system")
                    },
                    clear: function(){
                        systemConsole.clear.apply(this, {})
                    },
                    time: function(){
                        let args = Array.from(arguments)
                        systemConsole.time.apply(this, args)
                    },
                    assert: function(assertion, label){
                        if (!assertion){
                            pushToConsole(label, "log")
                        }

                        let args = Array.from(arguments)
                        systemConsole.assert.apply(this, args)
                    }
                }
            }(window.console))

            window.console = { ...window.console, ...console }

            console.system("Running fiddle")
        }

        if (window.parent){
            customConsole(window)
        }
    </script>
</head>
<body>
<!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-10 col-xl-9 mx-auto">
            <div class="card card-signin flex-row my-5">
                <div class="card-img-left d-none d-md-flex">
                    <!-- Background image for card set in CSS! -->
                </div>
                <div class="card-body">
                    <h5 class="card-title text-center">Register</h5>
                    <form class="form-signin" action="RegistrationServlet" method="post">
                        <div class="form-label-group">
                            <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
                            <label for="username">Login</label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                            <label for="password">Password</label>
                        </div>

                        <hr>

                        <div class="form-label-group">
                            <input type="email" id="email" name="email" class="form-control" placeholder="Email address" required>
                            <label for="email">E mail address</label>
                        </div>

                        <div class="form-label-group">
                            <input type="text" id="firstName" name="firstName" class="form-control" placeholder="First name" required>
                            <label for="firstName">First Name</label>
                        </div>

                        <div class="form-label-group">
                            <input type="text" id="lastName" name="lastName" class="form-control" placeholder="Last name" required>
                            <label for="lastName">Last name</label>
                        </div>

                        <div class="form-label-group">
                            <input type="date" id="date" name="date" class="form-control" placeholder="Date" required>
                            <label for="date">Date of the first day of work</label>
                        </div>



                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
                        <a class="d-block text-center mt-2 small" href="user_login.jsp">Sign In</a>
                        <hr class="my-4">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>


<script type="text/javascript">//<![CDATA[





//]]></script>

<script>
    // tell the embed parent frame the height of the content
    if (window.parent && window.parent.parent){
        window.parent.parent.postMessage(["resultsFrame", {
            height: document.body.getBoundingClientRect().height,
            slug: "1nu8g6e5"
        }], "*")
    }

    // always overwrite window.name, in case users try to set it manually
    window.name = "result"
</script>

<script>
    let allLines = []

    window.addEventListener("message", (message) => {
        if (message.data.console){
            let insert = document.querySelector("#insert")
            allLines.push(message.data.console.payload)
            insert.innerHTML = allLines.join(";\r")

            let result = eval.call(null, message.data.console.payload)
            if (result !== undefined){
                console.log(result)
            }
        }
    })
</script>

</body>
</html>

