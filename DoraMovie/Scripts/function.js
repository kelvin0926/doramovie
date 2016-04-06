// Toggle dropdown menu
function dropMenu(obj) {
    $(obj).each(function () {
        var theSpan = $(this);
        var theMenu = theSpan.find(".sub-menu");
        var tarHeight = theMenu.height();
        theMenu.css({ height: 0, opacity: 0 });
        theSpan.hover(
      function () {
          $(this).addClass("selected");
          theMenu.stop().show().animate({ height: tarHeight, opacity: 1 }, 200);
      },
      function () {
          // $(this).removeClass("selected");
          theMenu.stop().animate({ height: 0, opacity: 0 }, 200, function () {
              $(this).css({ display: "none" });
          });
      }
    );
    });
}
$('.article-share, .nav-link-share').mouseover(function (e) {
    $(this).parent().find('.article-share-dropdown').toggleClass('hidden');
    e.stopPropagation();
});

$('.news-user').click(function (e) {
    $(this).parent().find('.news-user-dropdown').toggleClass('hidden');
    e.stopPropagation();
});

$('body').click(function () {
    $('.news-user-dropdown, .article-share-dropdown').addClass('hidden');
});

// Back to top

$('#top').click(function () {
    $('html, body').animate({ scrollTop: 0 }, 100);
});

$(document).ready(function () {
    var $window = $(window);
    function checkWidth() {
        var windowsize = $window.width();
        if (windowsize < 500 && $('main').hasClass('layout-list')) {
            toggleLayout('grid');
        }
    }
    checkWidth();
    $(window).resize(checkWidth);

    $("#weixin-sticker").sticky({
        topSpacing: 100,
        getWidthFrom: ".demo-stories"
    });

});

// Focus to comment in Timeline
$('.timeline-comment textarea').focus(function () {
    $(this).parent().parent().addClass('focus');
})

// Toggle login/signup

//$('.goto-login, .goto-signup').click(function(){
//  $('.news-tip-login, .news-tip-signup').toggleClass('hidden');
//});

$('.goto-login').click(function () {
    $('.news-tip-login, .news-tip-signup').toggleClass('hidden');
    $("#user_login").focus();
    document.onkeydown = function () {
        if (event.keyCode == 13) {
            $("#wp-login").click();
        }
    }
});

$('.goto-signup').click(function () {
    $('.news-tip-login, .news-tip-signup').toggleClass('hidden');
    $("#user_register").focus();
    document.onkeydown = function () {
        if (event.keyCode == 13) {
            $("#wp-register").click();
        }
    }
});

$('.news-tip-close').click(function () {
    $('.news-tip-login, .news-tip-signup').addClass('hidden');
    $('#modal').addClass('hidden');
    document.onkeydown = null;
});

$('.news-user-login').click(function () {
    $('#modal, .news-tip-login').removeClass('hidden');
    $("#user_login").focus();
    document.onkeydown = function () {
        if (event.keyCode == 13) {
            $("#wp-login").click();
        }
    }
});

$('.news-user-signup').click(function () {
    $('#modal, .news-tip-signup').removeClass('hidden');
    $("#user_register").focus();
    document.onkeydown = function () {
        if (event.keyCode == 13) {
            $("#wp-register").click();
        }
    }
});


$("#user_password_confirmation").keyup(function () {
    if ($(this).val() == $("#user_password").val()) {
        $("#passwordfail").hide();
    } else {
        $("#passwordfail").show();
    }
});

$("#wp-login").click(function () {
    $.post(
				jsobj.ajaxurl,
				{
				    log: $("#user_login").val(),
				    pwd: $("#user_pass").val(),
				    action: "pw_login",
				    redirect_to: $("#redirect_to").val(),
				    security: jsobj.ajax_check,
				    rememberme: $('#rememberme').val()
				},
				function (data) {
				    if (data != "1") {
				        $("#info_login").removeClass().addClass("alert alert-error");
				        $("#info_login").slideDown();
				        $("#info_login").text("用户名或密码错误,请重试!");
				    }
				    else {
				        $("#info_login").slideDown();
				        $("#info_login").text("登陆成功，请刷新页面！");
				        location.reload();
				    }
				}
			);
});

$("#wp-register").click(function () {
    $.post(
				jsobj.ajaxurl,
				{
				    user_register: $("#user_register").val(),
				    user_email: $("#user_email").val(),
				    password: $("#password").val(),
				    repeat_password: $("#repeat_password").val(),
				    redirect_to: $("#redirect_to").val(),
				    action: "pw_register",
				    security: jsobj.ajax_check
				},
				function (data) {
				    if (data == "1") {
				        $("#info_register").removeClass().addClass("alert alert-success");
				        $("#info_register").slideDown();
				        $("#info_register").text("注册成功，刷新页面自动登陆！");
				    }
				    else {
				        $("#info_register").removeClass().addClass("alert alert-error");
				        $("#info_register").slideDown();
				        $("#info_register").text(data);
				    }
				}
			);
});

$("#sendComment").click(function () {
    $("#mkid").html("");

    var id = $("#sendCommentID").val();
    var _author = $("#author").val();
    var _email = $("#email").val();
    var content = $("#comment-content").val();
    $.ajax({
        url: 'article.aspx?comment=send&id=' + id + '&n=' + _author + '&e=' + _email + '&c=' + content + '',
        type: 'get',
        success: function (date) {
            $("#mkid").html(date);

            $("#comment-content").val("");
            $("#author").val("");
            $("#email").val("");
        }
    });
});

$("#regButton").click(function () {
    var pwd = $("#pwd").val();
    var pwd2 = $("#pwd2").val();

    var search_str = /^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/;
    var email = $("#email").val();
    if (!search_str.test(email)) {
        alert("请输入您的正确邮箱地址，谢谢");
        $('#email').focus();
        return false;
    }

    if (email == "" || pwd == "") {
        alert("你什么都不输入的？")
        $("#pwd").focus();
        return;
    } else if (pwd != pwd2) {
        alert("两次密码不对");
        $("#pwd").focus();
        return;
    }
    else {
        $.post("Login.aspx", { email: email, pwd: pwd, button: 'regButton' },
        function (date) {
            if (date == "success") {
                location.href = "index.aspx";
            } else {
                alert("哦……怎么注册会失败？" + date);
            }
        }, "text");
    }
});
function KeyDown() {
    if (event.keyCode == 13) {
        return false;
    }
}
function clickButton() {
    if (event.keyCode == 13) {
        location.href = "/class-" + document.getElementById("search").value + ".html";
        return false;
    }
}
var isPad = false;

var isMobile = {
    Android: function () {
        return navigator.userAgent.match(/Android/i) ? true : false;
    },
    BlackBerry: function () {
        return navigator.userAgent.match(/BlackBerry/i) ? true : false;
    },
    iOS: function () {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i) ? true : false;
    },
    Windows: function () {
        return navigator.userAgent.match(/IEMobile/i) ? true : false;
    },
    any: function () {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Windows());
    }
};
if (isMobile.any()) {
    isPad = true;
} else
    isPad = false;
