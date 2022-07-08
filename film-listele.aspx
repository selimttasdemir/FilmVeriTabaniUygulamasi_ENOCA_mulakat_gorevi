<%@ Page Title="" Language="C#" MasterPageFile="~/FilmArsiv.Master" AutoEventWireup="true" CodeBehind="film-listele.aspx.cs" Inherits="FilmVeriTabaniUygulamasi_ENOCA.film_listele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow: hidden; width: 100%;">
        <div style="margin: 10px; width: 20%; float: left;">
            <div style="margin: 10px 0px 0px 25px;">
                <input style="width: auto" class="form-control" id="myInput" type="text" placeholder="Ara...">
            </div>

            <div style="width: 100%; margin-top: 25px">

                <article class="card-group-item">
                    <div class="filter-content">
                        <div class="card-body">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Min Yıl</label>
                                    <asp:TextBox class="form-control" placeholder="1999" runat="server" ID="txtMin" TextMode="Number" />
                                </div>
                                <div class="form-group col-md-6 text-right">
                                    <label>Max Yıl</label>
                                    <asp:TextBox class="form-control" placeholder="2022" runat="server" ID="txtMax" TextMode="Number" />
                                </div>
                            </div>
                            <div>
                                <asp:Button class="btn btn-primary btn-block" Text="Bul" ID="btnBul" OnClick="btnBul_Click" runat="server" />
                            </div>
                        </div>
                        <!-- card-body.// -->
                    </div>
                </article>
                <!-- card-group-item.// -->

            </div>
        </div>
        <div style="margin: 10px; width: 70%; float: right;">
            <table class="table">
                <thead class="table-dark">
                    <tr>
                        <th style="width: auto; height: auto;">No.:</th>
                        <th style="width: auto; height: auto;">Film Adı</th>
                        <th style="width: auto; height: auto;">Yapım Tarihi</th>
                        <%--<th style="width: auto; height: auto;">Türü</th>--%>
                        <%--<th style="width: 25px; height: auto;">Sil</th>--%>
                    </tr>
                </thead>
                <tbody id="myTable">
                    <tr style="height: auto; font-family: 'Arial'">
                        <asp:Repeater ID="rptListe" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="table-primary" style="width: 150px;"><%# DataBinder.Eval(Container.DataItem, "FilmID") %></td>
                                    <td class="table-secondary" style="width: 150px;"><%# DataBinder.Eval(Container.DataItem, "FilmAdi") %></td>
                                    <td class="table-success" style="width: 150px;"><%# DataBinder.Eval(Container.DataItem, "FilmYapimYili") %></td>
                                    <%--<td class="table-info" style="width: 150px;"><%# DataBinder.Eval(Container.DataItem, "FilmTuru") %></td>--%>
                                    <%--<td>&nbsp;<a href="hancer-av-tr--mesajlar-jGj1IwnEAWCR85xWIyPixuYLKizandhln86XqYhgdID0K.aspx?iletisimID=<%#Eval("iletisimID")%>&islem=sil"><img alt="Sil" class="auto-style1" src="img/sil.png" /></a></td>--%>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>

</asp:Content>
