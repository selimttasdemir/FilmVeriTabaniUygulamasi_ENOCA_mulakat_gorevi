<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FilmVeriTabaniUygulamasi_ENOCA.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>


    <title>Giriş Yap - ENOCA YAZILIM</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="layoutAuthentication">
                <div id="layoutAuthentication_content">
                    <main>
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-5">
                                    <div class="card shadow-lg border-0 rounded-lg mt-5">
                                        <div class="card-header">
                                            <h3 class="text-center font-weight-light my-4">Login</h3>
                                        </div>
                                        <div class="card-body">
                                            <div>
                                                <div class="form-floating mb-3">
                                                    <asp:TextBox class="form-control" ID="txtMail" runat="server" placeholder="isim@ornek.com" TextMode="Email" Text="admin@123"></asp:TextBox>
                                                    <label for="inputEmail">Mail Adresi</label>
                                                </div>
                                                <div class="form-floating mb-3">
                                                    <asp:TextBox class="form-control" ID="txtSifre" runat="server" placeholder="Şifrenizi Giriniz" TextMode="Password"></asp:TextBox>
                                                    <label for="inputPassword">Şİfre</label>
                                                </div>
                                                <div class="form-check mb-3">
                                                    <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                    <label class="form-check-label" for="inputRememberPassword">Beni Hatırla</label>
                                                </div>
                                                <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                    <a class="small" href="Sifre-Sifirlama.aspx">Şifreni mi unuttun?</a>
                                                    <asp:Button class="btn btn-primary" Text="Giriş Yap" ID="btnGirisYap" OnClick="btnGirisYap_Click" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-footer text-center py-3">
                                            <div class="small"><a href="Create-Account.aspx">Hesabınızı Oluşturun!</a></div>
                                            <br />
                                            <asp:Label class="form-check-label" Text="" ID="lblDurum" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
</body>
</html>
