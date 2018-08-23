<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarouselWithAdo.aspx.cs" Inherits="MyWebFormCases.DataBase.CarouselWithAdo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">

        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="500">
                 <ol class="carousel-indicators">

          <% for (int i = 0; i < Imgtable.Rows.Count; i++)
                {%>
                          
 <li data-target="#myCarousel" data-slide-to="<%=i %>"  <%= (i==0?"class='active'":"") %> ></li>
                <%} %>
           </ol>
               
               <div class="carousel-inner">

                  <%for (int i = 0; i < Imgtable.Rows.Count; i++)
                      {%>
                   <div class="carousel-item <%=(i==0?"active":"") %>">
               
                <img class="d-block   w-100   <%=(i==1?"bg-primary":"") %> <%=(i==2?"bg-danger":"") %>  " src="<%=Imgtable.Rows[i]["ImgPath"] %>" alt="First slide" />
                       <div class="carousel-caption d-none d-md-block">
                    <h5><%=Imgtable.Rows[i]["ImgName"] %></h5>
                   
                </div>
            </div>

                     <% } %>
            

        </div>
</div>
    </form>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>
