<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="vview.aspx.cs" Inherits="Ttourism.vview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ">
        <div class="card" style="width: 100%;">
            <img src="https://i.dawn.com/primary/2015/12/567d216a2af1c.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">SWAT DISTRICT</h5>
                <p class="card-text">Package.</p>
                <p class="card-text">4 Days and 3 Nights.</p>
                <p class="card-text">Luxury Hotels.</p>
                <p class="card-text">Transportation.</p>
                <p class="card-text">Food and Beverages.</p>
                <a href="https://wa.link/bprjhl" class="btn btn-primary">BOOK NOW</a>



            </div>
        </div>
        <br />
        <br />
        <div class="card " style="width: 100%;">
            <img src="https://media-cdn.tripadvisor.com/media/photo-s/19/de/45/a9/naran-is-a-small-town.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Babusar Top</h5>
                <p class="card-text">Package.</p>
                <p class="card-text">4 Days and 3 Nights.</p>
                <p class="card-text">Luxury Hotels.</p>
                <p class="card-text">Transportation.</p>
                <p class="card-text">Food and Beverages.</p>
                <a href="https://wa.link/bprjhl" class="btn btn-primary">BOOK NOW</a>
            </div>
        </div>
        <br />
        <br />
        <div class="card" style="width: 100%;">
            <img src="https://media-cdn.tripadvisor.com/media/photo-m/1280/19/67/88/93/swat-valley.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Naran</h5>
                <p class="card-text">Package.</p>
                <p class="card-text">7 Days and 6 Nights.</p>
                <p class="card-text">Luxury Hotels.</p>
                <p class="card-text">Transportation.</p>
                <p class="card-text">Food and Beverages.</p>
                <a href="https://wa.link/bprjhl" class="btn btn-primary">BOOK NOW</a>

            </div>
        </div>
        <br />
        <br />
        <div class="card" style="width: 100%;">
            <img src="https://i.tribune.com.pk/media/images/945037-MazharNazir-1440572997/945037-MazharNazir-1440572997.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Kashmir</h5>
                <p class="card-text">Package.</p>
                <p class="card-text">5 Days and 4 Nights.</p>
                <p class="card-text">Luxury Hotels.</p>
                <p class="card-text">Transportation.</p>
                <p class="card-text">Food and Beverages.</p>
                <a href="https://wa.link/bprjhl" class="btn btn-primary">BOOK NOW</a>

            </div>
        </div>
        <div class="card" style="width: 100%;">
            <img src="https://www.brandsynario.com/wp-content/uploads/2018/12/Kund-Malir-Lead.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Kund malir</h5>
                <p class="card-text">Package.</p>
                <p class="card-text">2 Days and 1 Nights.</p>
                <p class="card-text">Luxury Hotels.</p>
                <p class="card-text">Transportation.</p>
                <p class="card-text">Food and Beverages.</p>
                <a href="https://wa.link/bprjhl" class="btn btn-primary">BOOK NOW</a>

            </div>
        </div>
        <br />
        <br />
    </div>

    <br />
    <br />
    <br />

</asp:Content>
