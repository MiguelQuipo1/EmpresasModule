<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
        <link rel="stylesgeet" href="https://rawgit.com/creativetimofficial/material-kit/master/assets/css/material-kit.css">
 	<style >
 		.main {
   			background: ${perfilEmpresa.opcColor2};
    		position: relative;
    		z-index: 3;
		}
		body {
   			margin: 0;
    		font-family: Roboto, Helvetica, Arial, sans-serif;
    		font-size: 1rem;
    		line-height: 1.5;
    		color: #212529;
    		text-align: left;
    		background-color: ${perfilEmpresa.opcColor1} ;
			}
</style>
 </head>
    
    <body class="profile-page">
        <nav class="navbar navbar-color-on-scroll navbar-transparent    fixed-top  navbar-expand-lg "  color-on-scroll="100"  id="sectionsNav">
            <div class="container">
                <div class="navbar-translate">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        <span class="navbar-toggler-icon"></span>
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav ml-auto">
                        <li class="dropdown nav-item">
                          <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false">
                              <i class="material-icons">apps</i> Components
                          </a>
                          <div class="dropdown-menu dropdown-with-icons">
                            <a href="../index.html" class="dropdown-item">
                                <i class="material-icons">layers</i> All Components
                            </a>
                            
                            <a href="https://demos.creative-tim.com/material-kit/docs/2.0/getting-started/introduction.html" class="dropdown-item">
                                <i class="material-icons">content_paste</i> Documentation
                            </a>
                          </div>
                        </li>
                          <li class="nav-item">
                              <a class="nav-link" href="javascript:void(0)">
                                  <i class="material-icons">cloud_download</i> Download
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="https://twitter.com/CreativeTim" target="_blank">
                                  <i class="fa fa-twitter"></i>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="https://www.facebook.com/CreativeTim" target="_blank">
                                  <i class="fa fa-facebook-square"></i>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link"  href="https://www.instagram.com/CreativeTimOfficial" target="_blank">
                                  <i class="fa fa-instagram"></i>
                              </a>
                          </li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="page-header " data-parallax="true" ></div>
        <div class="main main-raised">
            <div class="profile-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 ml-auto mr-auto">
                           <div class="profile">
                                <div class="avatar" style=" height: 150px; align-items: center;">
                                    <!--Imagen perfil-->
                                    <img src="/ismac-emprendimientos-web/resources/img/logos/${perfilEmpresa.logo}" alt="Circle Image" class="img-raised rounded-circle img-fluid" style="height: 100%">
                                </div>
                                <div class="name">
                                    <!--Nombre Usuario o empresa-->
                                    <h3 class="title">${empresa.nombreempresa}</h3>
                                    <!--Categoria empresa-->
                                    <h6>${empresa.tipoEmpresa}</h6>
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="description text-center">
                        <p>${sucursal.sucursal}</p>
                        <p>${empresa.direccion	}</p><br>
                    </div>
                    <div class="row">
                        <div class="col-md-6 ml-auto mr-auto">
                            <div class="profile-tabs">
                              <ul class="nav nav-pills nav-pills-icons justify-content-center" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#studio" role="tab" data-toggle="tab">
                                      <i class="material-icons">camera</i>
                                      Studio
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#works" role="tab" data-toggle="tab">
                                      <i class="material-icons">palette</i>
                                        Work
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#favorite" role="tab" data-toggle="tab">
                                      <i class="material-icons">favorite</i>
                                        Favorite
                                    </a>
                                </li>
                              </ul>
                            </div>
                    </div>
                </div>
            
              <div class="tab-content tab-space">
                <div class="tab-pane active text-center gallery" id="studio">
                      <div class="row">
                          <div class="col-md-3 ml-auto">
                              <img src="https://images.unsplash.com/photo-1524498250077-390f9e378fc0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83079913579babb9d2c94a5941b2e69d&auto=format&fit=crop&w=751&q=80" class="rounded">
                              <img src="https://images.unsplash.com/photo-1528249227670-9ba48616014f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66b8e7db17b83084f16fdeadfc93b95b&auto=format&fit=crop&w=357&q=80" class="rounded">
                          </div>
                          <div class="col-md-3 mr-auto">
                              <img src="https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=72da2f550f8cbd0ec252ad6fb89c96b2&auto=format&fit=crop&w=334&q=80" class="rounded">
                              <img src="https://images.unsplash.com/photo-1506667527953-22eca67dd919?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6326214b7ce18d74dde5e88db4a12dd5&auto=format&fit=crop&w=750&q=80" class="rounded">
                          </div>
                      </div>
                  </div>
                <div class="tab-pane text-center gallery" id="works">
                      <div class="row">
                          <div class="col-md-3 ml-auto">
                          <img src="https://images.unsplash.com/photo-1524498250077-390f9e378fc0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83079913579babb9d2c94a5941b2e69d&auto=format&fit=crop&w=751&q=80" class="rounded">
                            <img src="https://images.unsplash.com/photo-1506667527953-22eca67dd919?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6326214b7ce18d74dde5e88db4a12dd5&auto=format&fit=crop&w=750&q=80" class="rounded">
                            <img src="https://images.unsplash.com/photo-1505784045224-1247b2b29cf3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ec2bdc92a9687b6af5089b335691830e&auto=format&fit=crop&w=750&q=80" class="rounded">  					</div>
                          <div class="col-md-3 mr-auto">
                          <img src="https://images.unsplash.com/photo-1504346466600-714572c4b726?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6754ded479383b7e3144de310fa88277&auto=format&fit=crop&w=750&q=80" class="rounded">
                          <img src="https://images.unsplash.com/photo-1494028698538-2cd52a400b17?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83bf0e71786922a80c420c17b664a1f5&auto=format&fit=crop&w=334&q=80" class="rounded">
                          </div>
                      </div>
                  </div>
                <div class="tab-pane text-center gallery" id="favorite">
                      <div class="row">
                          <div class="col-md-3 ml-auto">
                            <img src="https://images.unsplash.com/photo-1504346466600-714572c4b726?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6754ded479383b7e3144de310fa88277&auto=format&fit=crop&w=750&q=80" class="rounded">
                          <img src="https://images.unsplash.com/photo-1494028698538-2cd52a400b17?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83bf0e71786922a80c420c17b664a1f5&auto=format&fit=crop&w=334&q=80" class="rounded">
                          </div>
                          <div class="col-md-3 mr-auto">
                            <img src="https://images.unsplash.com/photo-1505784045224-1247b2b29cf3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ec2bdc92a9687b6af5089b335691830e&auto=format&fit=crop&w=750&q=80" class="rounded">  					
                            <img src="https://images.unsplash.com/photo-1524498250077-390f9e378fc0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83079913579babb9d2c94a5941b2e69d&auto=format&fit=crop&w=751&q=80" class="rounded">
                            <img src="https://images.unsplash.com/photo-1506667527953-22eca67dd919?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6326214b7ce18d74dde5e88db4a12dd5&auto=format&fit=crop&w=750&q=80" class="rounded">
                          </div>
                      </div>
                  </div>
              </div>
    
            
                </div>
            </div>
        </div>
        
        <footer class="footer text-center ">
            <p>Made with <a href="https://demos.creative-tim.com/material-kit/index.html" target="_blank">Material Kit</a> by Creative Tim</p>
        </footer>
      
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>

    
    </body>
</html>