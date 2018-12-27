<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cssBorderFont.aspx.cs" Inherits="MyWebFormCases.bootstrap.cssBorderFont" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>


    <link href='https://cdn.picodi.com/assets/bundles/view/prod/css/main.min.ver=9e2b9cd3.min.css?v374' rel='stylesheet' type='text/css'>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://cdn.picodi.com/assets/bundles/view/prod/css/shop.ver=c0c9fe0c.min.css?v374" media="all">
<style>
/*@import url(http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300ita‌​lic,400italic,500,500italic,700,700italic,900italic,900);*/
@import 'https://fonts.googleapis.com/css?family=Pacifico|Tangerine|Rototo';
    body {
       font-family: 'Rototo', serif;
    font-size: 11px;

    }

    .btn {
        display: inline-block;
        padding: 6px 12px;
        margin-bottom: 0;
        font-size: 14px;
        font-weight: 400;
        line-height: 1.42857143;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        -ms-touch-action: manipulation;
        touch-action: manipulation;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        background-image: none;
        border: 1px solid transparent;
        border-radius: 4px;
    }

    .btn-primary {
        color: #fff;
        background-color: #337ab7;
        border-color: #2e6da4;
    }

    .coupon .modal-label .inner .wrap, .coupon_label .inner .wrap, .modal-container .modal-label .inner .wrap, .modal-container_label .inner .wrap, .offer .modal-label .inner .wrap, .offer_label .inner .wrap {
        display: table;
        margin: 10px 10px;
        float: left;
        width: 20px;
        border: 1px solid #ebebeb;
        border-radius: 4px;
        text-align: center;
        position: relative;
        min-height: 90px;
    }


    /*.offer-modal .wrap {
        background-color: #f0f2f4;
        border: 0 !important;
    }*/

    .coupon_label-code .inner .wrap span {
        background: #e5161e;
        color: white;
        width: 80px;
    }

    /*.coupon_label.has-vertical-padding {
        padding-right: 10px;
        padding-left: 10px;
    }*/

    .alignCenter {
        align-content: center;
    }

    .jconfirm .jconfirm-box {
        width: 140%;
        margin-left: -30%;
    }

    .btn.btn-custom-lg,
    .btn.btn-custom-sm,
    .btn.btn-custom-xs {
        border-radius: 0;
    }

    .btn-success {
        background-color: #e5161e !important;
    }

    .payTm {
        color: #e5161e;
        font-weight: bolder;
    }

    .inner span {
        text-align: center;
        color: #fff;
        font-size: 10px;
        display: block;
        text-transform: uppercase;
        border-radius: 0 0 4px 4px;
        padding: 5px 0;
    }

    .offer-modal .wrap {
        background-color: #f0f2f4;
        border: 0 !important;
    }

    .coupon_label-code .inner .wrap pre {
        font: 900 normal 20px Roboto,"Helvetica Neue",Helvetica,Arial,sans-serif,"Helvetica Neue",Helvetica,Arial,sans-serif;
        word-spacing: -.4ex;
    }

    .coupon_title.is-bold {
        font-family: Roboto,"Helvetica Neue",Helvetica,Arial,sans-serif;
        font-size: 15px;
        font-weight: 400;
        margin-bottom: 12px;
    }

    pre {
        display: block;
        font-family: monospace;
        white-space: pre;
        margin: 1em 0px;
    }

    .coupon_wrapper .has-border {
        border-left: 1px solid #f1f3f5;
        /*padding-left: 40px;*/
    }

    .aside {
        margin: 2px 0px 0px 0px;
        font-family: 'LinotypeUniversW01-Bold 723691';
        color: #FFFFFF;
        vertical-align: middle;
    }

    .offer-modal_info {
        background-color: #f1f3f5;
        text-align: center;
        padding: 6%;
        justify-content: center;
    }

    .wrap {
        background-color: #f1f3f5;
    }

    .btn-primary {
        background-color: #e5161e !important;
    }

    .modal-lg {
        width: 50% !important;
        height: 100% !important;
    }

    .modal-header {
        border-bottom: 0px solid #e9ecef !important;
        padding: 0rem !important;
    }

    body {
        font-family: 900 normal 20px Roboto,"Helvetica Neue",Helvetica,Arial,sans-serif,"Helvetica Neue",Helvetica,Arial,sans-serif;
    }

    #largeModal {
        width: 100%;
    }

    div.wrap {
        margin-left: 30% !important;
        width: 20% !important;
    }

    p.offer-modal_title {
        color: #495057;
    }

    .shortTxt {
        margin-left: 4%;
        padding: 3%;
        font-family: 'Roboto', sans-serif;
        font-size: 12px;
    }

    .modal-dialog {
        max-width: 620px !important;
        margin: 1.75rem auto;
        border-radius: 0px;
    }

    .btn-success {
        background-color: #82c91e !important;
    }

    .getAside {
        margin-left: 24%;
    }

    .btn-side {
        margin-left: -10%;
    }

    .btn.btn-custom-lg,
    .btn.btn-custom-sm,
    .btn.btn-custom-xs {
        border-radius: 0;
        border: 0px;
    }

    .modal-content {
        border: 0px !important;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container py-5">
    <div class="modal-dialog new">
        <div class="modal-content">
                    <div class="coupon">

                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fa fa-close" aria-hidden="true"></i></button>
                            <section class="row code">
                                <div class="coupon_label coupon_label-code col-xs-4 col-sm-3 col-md-3 has-vertical-padding">
                                    <div class="inner" style="width:7px">
                                        
                                        <div class="wrap">
                                            <pre>₹30</pre>
                                            <span>CODE</span></div>
                                 </div>
                                </div>
                                <div class="coupon_wrapper has-border col-xs-8 col-sm-7 col-md-9">
                                    <h3 class="coupon_title is-bold">Collect Flat ₹30 Cashback on Hathway Bill Payments</h3>
                                    <div class="dropdown-desc">
                                    <span class="couponMore">
                                        Minimum transaction amount must be greater than or equal to ₹500. Maximum Cashback amount that can be earned is ₹30. Promo code is valid only for Hathway Broadband users.
                                    </span>
                                    </div>
                                                                        <ul class="bottom-label">
                                                                                                                    </ul>
                                    
                                </div>
                            </section>

                            
                            
                                <section class="offer-modal_info">
                                                                        <span class="offer-modal_title">Go to <a class="popup-shop-link" href="https://metric.picodi.net/in/r/155810" target="_blank" rel="noopener" data-ga="coupon_code_popup" data-ga-act="click-goto" data-ga-lbl="paytm_155810">Paytm</a> and paste the code at checkout</span>
                                    <div class="copy-code-box">
                                        <div class="input-group">
                                            <input type="text" class="form-control" value="aCNVNGI4SEFUSFdBWTMwTWZudi9E" id="btn-copy-target-new" readonly="readonly">
                                            <span id="copyBtn" class="input-group-addon btn-dark" data-clipboard-action="copy" data-clipboard-target="#btn-copy-target-new" data-ga="coupon_code_popup" data-ga-act="click-copy" data-ga-lbl="paytm_155810">
                                                        <i class="fa fa-files-o"></i> Copy
                                                </span>
                                        </div>
                                        <a href="https://metric.picodi.net/in/r/155810" class="btn btn-primary btn-lg" target="_blank" rel="noopener" data-ga="coupon_code_popup" data-ga-act="click-goto" data-ga-lbl="paytm_155810">Go to Paytm website
                                        </a>
                                    </div>
                                </section>

                            
                        
                                                    <div class="adb-info hidden">
                                <div class="adb-info_icon">
                                    <i class="icon icon-adb-fox"></i>
                                </div>
                                <p class="adb-info_msg">
                                    Shop's website is not opening? Make sure to turn off your ad-blocking software - afterwards, promotions will definitely display properly.
                                </p>
                            </div>
                        
                                                    <div class="user-question" data-action="/in/offer/vote-offer" style="position: relative; top: 0px;">
                                <div class="user-question_content">
                                    <span class="user-question_question">Use the code and let us know if it works</span>
                                    <button type="button" class="btn btn-md btn-success formYesTrigger" data-answer="Yes">
                                        <i class="icon icon-like"></i> Yes
                                    </button>
                                    <button type="button" class="btn btn-md btn-danger formNoTrigger" data-answer="No">
                                        <i class="icon icon-unlike"></i> No
                                    </button>
                                </div>
                                
                            </div>
                                        </div>
            </div>
</div>
    </form>
</body>
</html>
