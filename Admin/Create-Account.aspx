<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create-Account.aspx.cs" Inherits="FilmVeriTabaniUygulamasi_ENOCA.Admin.Create_Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

    <title>Kayıt Oluştur - ENOCA YAZILIM</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
                                        <h3 class="text-center font-weight-light my-4">Hesap Oluştur</h3>
                                    </div>
                                    <div class="card-body">
                                        <div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox class="form-control" ID="txtAd" runat="server" placeholder="Adınızı Giriniz ..." TextMode="SingleLine"></asp:TextBox>
                                                        <label for="inputFirstName">Adınız</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox class="form-control" ID="txtSoyad" runat="server" placeholder="Soyadınızı Giriniz ..." TextMode="SingleLine"></asp:TextBox>
                                                        <label for="inputLastName">Soyadınız</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <asp:TextBox class="form-control" ID="txtMail" runat="server" placeholder="isim@ornek.com" TextMode="Email"></asp:TextBox>
                                                <label for="inputEmail">Mail Adresiniz</label>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox class="form-control" ID="txtSifre" runat="server" placeholder="Şifrenizi Belirleyin" TextMode="Password"></asp:TextBox>
                                                        <label for="inputPassword">Şifre</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPasswordConfirm" type="password" placeholder="Şifrenizi Tekrar Girin" />
                                                        <label for="inputPasswordConfirm">Şifre Tekrarı</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="position: center" class="mt-4 mb-0">
                                                <div style="width: 250px; position: center" class="d-grid">
                                                    <asp:Button class="btn btn-primary btn-block" Text="Hesap Oluştur" ID="btnHesapOlustur" OnClick="btnHesapOlustur_Click" runat="server" />
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login.aspx">Hesabınız var mı? Giriş Yapın.</a></div>
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
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
