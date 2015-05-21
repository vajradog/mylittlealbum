<!doctype html>
<html class="no-js">

<head>
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <title>Filoxenia</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/vendor/animate.css">
    <link rel="stylesheet" href="css/vendor/magnific-popup.css">
    <link rel="stylesheet" href="css/filoxenia.css">
    <link rel="stylesheet" href="css/custom.css">

    <script src="js/vendor/modernizr.js"></script>
    <script src="js/vendor/fastclick.js"></script>
</head>

<body>
    <header class="contain-to-grid">
        <div class="row">
            <div class="small-12 column">
                <nav class="top-bar" data-topbar role="navigation" data-options="back_text: <i class='fa fa-chevron-left'></i> Back; mobile_show_parent_link: false;">
                    <ul class="title-area">
                        <li class="name">
                            <a href="index.html">
                                <img src="images/logo.png" alt="logo">
                            </a>
                        </li>
                        <li class="toggle-topbar menu-icon">
                            <a href="#"><span>Menu</span></a>
                        </li>
                    </ul>

                    <section class="top-bar-section">
                        <ul class="right">
                            <li class="has-dropdown">
                                <a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li>
                                        <a href="blog.html">Blog</a>
                                    </li>

                                    <li>
                                        <a href="support.html">Support</a>
                                    </li>

                                    <li>
                                        <a href="login.html">Login</a>
                                    </li>

                                    <li>
                                        <a href="forgot-password.html">Forgot Password</a>
                                    </li>

                                    <li>
                                        <a href="404.html">404 Error Page</a>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a href="plans.html">Plans &amp; Pricing</a>
                            </li>

                            <li>
                                <a href="features.html">Features</a>
                            </li>

                            <li>
                                <a href="about.html">About</a>
                            </li>

                            <li class="active">
                                <a href="contact.html">Contact</a>
                            </li>

                            <li class="has-form">
                                <a href="signup.html" class="button">Sign Up</a>
                            </li>
                        </ul>
                    </section>

                </nav>
            </div>
        </div>

    </header>

    <main>

        <div class="breadcrumb-container">
            <div class="row">
                <div class="large-12 column">
                    <nav class="breadcrumbs animated bounceInDown">
                        <a href="index.html">Home</a>
                        <a class="current" href="#">Contact Us</a>
                    </nav>
                </div>
            </div>
        </div>


        <section class="container">
            <div class="row title">
                <div class="small-12 column">
                    <h6>How to reach us</h6>
                </div>
            </div>


            <div class="row">
                <div class="large-7 column">
                    <div class="result-success bounceIn animated hide top-spacer text-center">
                        <i class="fa fa-thumbs-up text-green text-size--xxl"></i>

                        <h4 class="text-green">
                        Your email has been sent.
                    </h4>
                    </div>

                    <div class="result-error shake animated hide top-spacer text-center">
                        <i class="fa fa-exclamation-triangle text-red text-size--xxl"></i>

                        <h4 class="text-red">
                        There was a problem sending this message. Please contact us by email.
                    </h4>
                    </div>

                    <form action="sendmail.php" method="POST" data-abide="ajax">
                        <p>
                            If you're having trouble, the first place to look for help is on our <a href="support.html">support</a> page. If you still need our help, please fill the form below:
                        </p>

                        <div class="row">
                            <div class="large-8 column">
                                <label for="name">Name:</label>
                                <input id="name" name="name" type="text" required>
                                <small class="error">Name is required.</small>
                            </div>
                        </div>

                        <div class="row">
                            <div class="large-8 column">
                                <label for="email">Email:</label>
                                <input id="email" name="email" type="email" required>
                                <small class="error">Email is required and must be valid.</small>
                            </div>
                        </div>

                        <div class="row">
                            <div class="large-12 column">
                                <label for="subject">Subject:</label>
                                <input id="subject" name="subject" type="text" required>
                                <small class="error">Subject is required.</small>
                            </div>
                        </div>

                        <div class="row">
                            <div class="large-12 column">
                                <label>Message:</label>
                                <textarea id="message" name="message" required></textarea>
                                <small class="error">Message is required.</small>
                            </div>
                        </div>

                        <div class="row">
                            <div class="large-12 column">
                                <button class="secondary">Send Message<i class="fa fa-paper-plane left-spacer--xs"></i>
                                </button>
                            </div>
                        </div>

                        <div class="row">
                            <div class="large-12 column">
                                <small>
                                <em>All fields are required.</em>
                            </small>
                            </div>
                        </div>
                    </form>

                    <div class="spinner-wrap hide text-center">
                        <h4>Please wait...</h4>

                        <div class="spinner bounceIn animated">
                            <div class="rect1"></div>
                            <div class="rect2"></div>
                            <div class="rect3"></div>
                            <div class="rect4"></div>
                            <div class="rect5"></div>
                        </div>
                    </div>
                </div>

                <div class="large-4 column">
                    <div id="map-canvas"></div>
                    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
                    <script>
                        var latitude = -37.817379;
                        var longitude = 144.955477;
                        var title = 'Hello World';

                        function initialize() {
                            var e = new google.maps.LatLng(latitude, longitude);
                            var t = {
                                zoom: 16,
                                center: e,
                                mapTypeId: google.maps.MapTypeId.ROADMAP
                            };
                            var n = new google.maps.Map(document.getElementById("map-canvas"), t);
                            var r = new google.maps.Marker({
                                position: e,
                                map: n,
                                title: title
                            })
                        }
                        google.maps.event.addDomListener(window, "load", initialize)
                    </script>

                    <div class="row">
                        <div class="large-3 small-2 column">
                            <h6>Address:</h6>
                        </div>

                        <div class="large-9 small-10 column">
                            <p>121 King Street, Melbourne Victoria 3000 Australia</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="large-3 small-2 column">
                            <h6>Phone:</h6>
                        </div>

                        <div class="large-9 small-10 column">
                            <p>+61 3 8376 6284
                                <br>+61 3 8376 6287</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="large-3 small-2 column">
                            <h6>Email:</h6>
                        </div>

                        <div class="large-9 small-10 column">
                            <p>
                                <a href="mailto:info@filoxenia.com">info@filoxenia.com</a>
                                <br>
                                <a href="mailto:info@filoxenia.com">support@filoxenia.com</a>
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main>

    <footer>
        <div class="row spacy-s">
            <div class="large-6 column">
                <h4>About us</h4>

                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.
                </p>

                <ul class="popup large-block-grid-5 medium-block-grid-5 small-block-grid-3">
                    <li>
                        <a href="images/photos/person1.jpg">
                            <img src="images/photos/person1_s.jpg" alt="">
                        </a>
                    </li>

                    <li>
                        <a href="images/photos/person2.jpg">
                            <img src="images/photos/person2_s.jpg" alt="">
                        </a>
                    </li>

                    <li>
                        <a href="images/photos/person3.jpg">
                            <img src="images/photos/person3_s.jpg" alt="">
                        </a>
                    </li>

                    <li>
                        <a href="images/photos/person4.jpg">
                            <img src="images/photos/person4_s.jpg" alt="">
                        </a>
                    </li>

                    <li>
                        <a href="images/photos/person5.jpg">
                            <img src="images/photos/person5_s.jpg" alt="">
                        </a>
                    </li>
                </ul>
            </div>

            <div class="large-2 column">
                <h4>Services</h4>

                <ul class="side-nav">
                    <li>
                        <a href="plans.html">Plans &amp; Pricing</a>
                    </li>

                    <li>
                        <a href="blog.html">Our Blog</a>
                    </li>

                    <li>
                        <a href="about.html">About us</a>
                    </li>

                    <li>
                        <a href="support.html">Support</a>
                    </li>

                    <li>
                        <a href="terms.html">Terms of Service</a>
                    </li>

                    <li>
                        <a href="privacy.html">Privacy Policy</a>
                    </li>

                    <li>
                        <a href="contact.html">Contact us</a>
                    </li>
                </ul>
            </div>

            <div class="large-4 column">
                <h4>Contact</h4>

                <div class="row">
                    <div class="large-3 small-2 column">
                        <h6>Address:</h6>
                    </div>

                    <div class="large-9 small-10 column">
                        <p>121 King Street, Melbourne Victoria 3000 Australia</p>
                    </div>
                </div>

                <div class="row">
                    <div class="large-3 small-2 column">
                        <h6>Phone:</h6>
                    </div>

                    <div class="large-9 small-10 column">
                        <p>+61 3 8376 6284
                            <br>+61 3 8376 6287</p>
                    </div>
                </div>

                <div class="row">
                    <div class="large-3 small-2 column">
                        <h6>Email:</h6>
                    </div>

                    <div class="large-9 small-10 column">
                        <p>
                            <a href="mailto:info@filoxenia.com">info@filoxenia.com</a>
                            <br>
                            <a href="mailto:info@filoxenia.com">support@filoxenia.com</a>
                        </p>
                    </div>
                </div>

            </div>
        </div>

        <div class="row">
            <div class="large-12 column">
                <hr>
            </div>
        </div>

        <div class="row">
            <p class="medium-4 small-12 column copyright">
                Copyright &copy; 2014 Filoxenia
            </p>

            <p class="medium-8 small-12 column social">
                <a href="contact.html"><i class="fa fa-envelope"></i></a>
                <a href="#"><i class="fa fa-rss"></i></a>
                <a href="//www.facebook.com" target="_blank"><i class="fa fa-facebook"></i></a>
                <a href="//www.twitter.com" target="_blank"><i class="fa fa-twitter"></i></a>
                <a href="//www.google.com/plus" target="_blank"><i class="fa fa-google-plus"></i></a>
                <a href="//www.linkedin.com" target="_blank"><i class="fa fa-linkedin"></i></a>
                <a href="skype:echo123?call" target="_blank"><i class="fa fa-skype"></i></a>
            </p>
        </div>

    </footer>

    <!-- Javascript -->
    <script>
        Modernizr.mq('(min-width:0)') || document.write('<script src="js/vendor/respond.js"><\/script>')
    </script>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/jquery.fitvids.js"></script>
    <script src="js/vendor/jquery.magnific-popup.js"></script>
    <script src="js/vendor/foundation.js"></script>
    <script src="js/filoxenia.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>
