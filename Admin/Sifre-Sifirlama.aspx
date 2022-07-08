<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sifre-Sifirlama.aspx.cs" Inherits="FilmVeriTabaniUygulamasi_ENOCA.Admin.Sifre_Sifirlama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Şifre Sıfırlama - ENOCA YAZILIM</title>
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
                                        <h3 class="text-center font-weight-light my-4">Password Recovery</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="small mb-3 text-muted">Mail adresinizi girin ve size gönderilen bağlantıya tıklayın.</div>
                                        <div>
                                            <div class="form-floating mb-3">
                                                <asp:TextBox class="form-control" ID="txtMail" runat="server" placeholder="isim@ornek.com" TextMode="Email"></asp:TextBox>
                                                <label for="inputEmail">Mail Adresiniz</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="login.aspx">Giriş Sayfasına Git</a>
                                                <a class="btn btn-primary" href="login.aspx">Şifreyi Sıfırla</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="register.html">Need an account? Sign up!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                               
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
