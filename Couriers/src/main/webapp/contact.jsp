<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title> Contact Page</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Spectral:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet" />

    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/style.css" /> 

    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <style> 
     /* Reset and basic styles */
        body,
        html {
            font-family: 'Roboto', sans-serif;
            line-height: 1.6;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .page-heading {
    background-image: url('https://t3.ftcdn.net/jpg/05/72/52/18/360_F_572521803_CM2GR3pwuK6YstBcTei5QdLLyu3Mdga6.jpg'); /* Use the correct path for your image */
    background-size: cover;
    background-position: center;
    padding: 20px 0;
    color: white;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.page-heading .logo {
    display: flex;
    align-items: center;
    justify-content: flex-start; /* Align logo to the left */
    margin-right: auto; /* Push the logo to the far left */
}

.page-heading .logo img {
    width: 180px; /* Increase the size of the logo */
    height: auto;
    margin-right: 10px; /* Adjust margin if needed */
}

.page-direction-button {
    display: flex;
    align-items: center;
    justify-content: flex-end; /* Align button to the right */
    margin-left: auto; /* Push the button to the far right */
}

.page-direction-button a {
    background-color: #001a70; /* Use the dark blue color */
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    display: flex;
    align-items: center;
}

.page-direction-button a i {
    margin-right: 15px;
}

        /* Contact information */
        .contact-us {
            padding: 50px 0;
            background-color: #f5f5f5; /* Changed background color */
            text-align: center; /* Center alignment */
        }

        .contact-us .section-heading h2 {
            color: #333;
        }

        .contact-us .section-heading p {
            color: #666;
        }

        .contact-us img {
            max-width: 100%;
            margin-bottom: 20px;
        }

        /* Contact form */
        .contact-form {
            padding: 50px 0;
            background-color: #f9f9f9;
        }

        .contact-form .section-heading h2 {
            color: #333;
        }

        .contact-form form {
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .contact-form input[type="text"],
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
        }

        .contact-form textarea {
            height: 150px;
        }

        .contact-form button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .contact-form button:hover {
            background-color: #555;
        }

        /* Map section */
        .map {
            padding: 50px 0;
        }

        .map iframe {
            border: none;
            width: 100%;
            height: 400px;
        }

        /* Footer */
        .footer-basic {
            padding: 40px 0;
            background-color: #ffffff;
            color: #4b4c4d;
        }

        .footer-basic ul {
            padding: 0;
            list-style: none;
            text-align: center;
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 0;
        }

        .footer-basic li {
            padding: 0 10px;
        }

        .footer-basic ul a {
            color: inherit;
            text-decoration: none;
            opacity: 0.8;
        }

        .footer-basic ul a:hover {
            opacity: 1;
        }

        .footer-basic .social {
            text-align: center;
            padding-bottom: 25px;
        }

        .footer-basic .social>a {
            font-size: 24px;
            width: 40px;
            height: 40px;
            line-height: 40px;
            display: inline-block;
            text-align: center;
            border-radius: 50%;
            border: 1px solid #ccc;
            margin: 0 8px;
            color: inherit;
            opacity: 0.75;
        }

        .footer-basic .social>a:hover {
            opacity: 0.9;
        }
    
    </style>
</head>

<body>
<section class="page-heading" id="top">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="logo">
                    <img src="https://brandlogos.net/wp-content/uploads/2022/08/airlink-logo_brandlogos.net_nbbiu-512x512.png" alt="Flight Template" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="page-direction-button">
                    <a href="index.jsp"><i class="fa fa-home"></i> Go Back Home</a>
                </div>
            </div>
        </div>
    </div>
</section>


    <section class="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h2>Contact Information</h2>
                        <p>For any inquiries or assistance, our team is here to help! Reach out via phone, email, or visit us at our office. We’re committed to providing you with prompt and friendly support.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="https://imgs.search.brave.com/lnexSN66Nhalv5IZ1Lq1IopCLZJaNqNsvd_IjjbGFds/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTM1/NzUzMDE0NC9waG90/by95b3VuZy1mYW1p/bHktaGF2aW5nLWZ1/bi10cmF2ZWxpbmct/dG9nZXRoZXIuanBn/P3M9NjEyeDYxMiZ3/PTAmaz0yMCZjPTlu/MHlSM3E3dzRSZXVU/aU5BMWs4RDRCT2w3/X19aSjlLNGl4VDRr/TmhZWjg9" alt="" />
                </div>
                <div class="col-md-6">
                    <img src="https://imgs.search.brave.com/xkxCAjlWv-4LU1c5ucfSJ5oGvK7RELC65Qj3dUFS59c/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tYWdh/emluZS5ub3J0aGVh/c3QuYWFhLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvMjAxOS8w/MS9haXJwbGFuZS1w/YXNzZW5nZXItYmls/bC1vZi1yaWdodHMt/Mi5qcGc" alt="" />
                </div>
                <div class="col-md-4">
                    <h6>Reliable Courier Services</h6>
                    <p>At our courier service, we prioritize efficient and secure delivery for all your shipping needs. Our experienced team ensures your packages are handled with care, from pickup to delivery. Trust us for reliable and timely service every time.</p>
                </div>
                <div class="col-md-4">
                    <h6>Fast and Dependable Delivery</h6>
                    <p>Experience swift and dependable delivery with our expert courier team. We handle your shipments with precision, ensuring timely and safe arrivals. Count on us for efficient service that meets your every need.</p>
                </div>
                <div class="col-md-4">
                    <h6>Seamless Shipping Solutions</h6>
                    <p>We streamline your shipping needs with efficient and reliable services. Our team manages every detail, ensuring your packages are delivered smoothly and on schedule. Trust us for hassle-free and dependable courier solutions.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="contact-form">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h2>Leave us a message</h2>
                    </div>
                </div>
                <div class="col-md-6 col-md-offset-3">
                    <form id="contact" action="#" method="post">
                        <div class="row">
                            <div class="col-md-6">
                                <fieldset>
                                    <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="required" />
                                </fieldset>
                            </div>
                            <div class="col-md-6">
                                <fieldset>
                                    <input name="email" type="text" class="form-control" id="email" placeholder="Your email..." required="required" />
                                </fieldset>
                            </div>
                            <div class="col-md-12">
                                <fieldset>
                                    <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required="required"></textarea>
                                </fieldset>
                            </div>
                            <div class="col-md-12">
                                <fieldset>
                                    <button type="submit" id="form-submit" class="btn">Submit Your Message</button>
                                </fieldset>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <section class="map">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7895.485196115994!2d103.85995441789784!3d1.2880401763270322!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7fb4e58ad9cd826e!2sSingapore+Flyer!5e0!3m2!1sen!2sth!4v1505825620371" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen="allowfullscreen"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
        <div class="footer-basic">
            <footer>
                <div class="social">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                </div>
                <ul class="list-inline">
                    <li class="list-inline-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-cogs"></i> Services</a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-info-circle"></i> About</a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-lock"></i> Privacy Policy</a></li>
                </ul>
                <br/>
                <p align="center">&#169; All rights reserved.</p>
            </footer>
        </div>
    

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            // navigation click actions 
            $('.scroll-link').on('click', function(event) {
                event.preventDefault();
                var sectionID = $(this).attr("data-id");
                scrollToID('#' + sectionID, 750);
            });
            // scroll to top action
            $('.scroll-top').on('click', function(event) {
                event.preventDefault();
                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');
            });
            // mobile nav toggle
            $('#nav-toggle').on('click', function(event) {
                event.preventDefault();
                $('#main-nav').toggleClass("open");
            });
        });
        // scroll function
        function scrollToID(id, speed) {
            var offSet = 0;
            var targetOffset = $(id).offset().top - offSet;
            var mainNav = $('#main-nav');
            $('html,body').animate({
                scrollTop: targetOffset
            }, speed);
            if (mainNav.hasClass("open")) {
                mainNav.css("height", "1px").removeClass("in").addClass("collapse");
                mainNav.removeClass("open");
            }
        }
        if (typeof console === "undefined") {
            console = {
                log: function() {}
            };
        }
    </script>
</body>
</html>