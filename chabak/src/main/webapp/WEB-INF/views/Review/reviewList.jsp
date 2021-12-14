<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>리뷰 리스트</title>
<head>
 <meta name="robots" content="noindex, nofollow">
<%@ include file="../../include/header.jsp"%>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
	
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">

body {
 background-color:#eee;   
}    

#pinBoot {
  position: relative;
  max-width: 100%;
  width: 100%;
}
img {
  width: 100%;
  max-width: 100%;
  height: auto;
}
.white-panel {
  position: absolute;
  background: white;
  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
  padding: 10px;
}
/*
stylize any heading tags withing white-panel below
*/

.white-panel h1 {
  font-size: 1em;
}
.white-panel h1 a {
  color: #A92733;
}
.white-panel:hover {
  box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.5);
  margin-top: -5px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}    </style>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
        });
    </script>
    
    
    
</head>
<body>

<%@ include file="../../include/navigator.jsp"%>
	<style>
.box {
	margin: 100px auto;
	width: 300px;
	height: 50px;
}
</style>
 <form id="reviewForm" name="reviewForm" method="post">
 <div class="container">
  <div class="row">
    <h2>차박 여행 자랑 후기</h2>

    <p>Best viewed <a href="http://bootsnipp.com/iframe/Zkk0O" target="_blank">full screen</a>
    </p>
    <hr>
    <section id="pinBoot">
  <c:forEach var="result" items="${list }" varStatus="status"> 
      <article class="white-panel"><img src="data:image/jpeg;base64,<c:out value='${result.re_Img}'/>" >
        <h4><a href='RviewContent.do?re_num=${result.re_num}' onClick='fn_view(${result.re_num})'><c:out value="${result.re_title }"/></h4>
        <p><c:out value="${result.re_memo }"/></p>
      </article>

     </c:forEach>
    </section>


    <hr>


  </div>
  
  
  
   <table width="100%" cellpadding="0" cellspacing="0" border="0"
			class="table">
			<tr align="center">
				<td align="right">
					<!-- <input type=button class="btn btn-secondary"
					value="글쓰기" onClick="location='RwriteForm.do'"> 
					<input
					type=button class="btn btn-secondary" value="이 전"
					onClick="history.go(-1)"> 
					<input type=button
					class="btn btn-secondary" value="삭 제" onClick="fn_delete()"> -->

					
				</td>
			</tr>
		</table>
        <div>            
            <a href='#' onClick='fn_write()'>글쓰기</a>   
            <a href="#" onClick="fn_delete()">삭제</a> <!-- 삭제할 항목 넣어줘야함 . -->
        </div>
    </form>
    <form id="selectFilter" name="selectFilter" method="post">
    </form>
    
    
    
    
  </form>
  
    <br>
    <br>




    
<script>
//글쓰기
function fn_write(){
    
    var form = document.getElementById("reviewForm");
    
    form.action = "<c:url value='/RwriteForm.do'/>";
    form.submit();
    
}
 
//글조회
function fn_view(cb_num){
    
    var form = document.getElementById("reviewForm");
    var url = "<c:url value='/RviewContent.do'/>";
    url = url + "?re_num=" + re_num;
    
    form.action = url;    
    form.submit(); 
}

/*
//글삭제
function fn_delete(re_num) { 
	var chkbox = document.getElementsByName('chkbox'); 
	var chk = false; 
	for(var i=0 ; i<chkbox.length ; i++) 
	{ 
		if(chkbox[i].checked) { 
			chk = true; 
			var form = document.getElementById(re_num);
			alert(form + " 삭제?");
			form.action = "<c:url value='/deletereview.do'/>";
			url = url + "?re_num=" + re_num;
		    form.submit();
			} 
		else { chk = false; } } 
	}
*/
</script>



<script type="text/javascript">
	$(document).ready(function() {
$('#pinBoot').pinterest_grid({
no_columns: 4,
padding_x: 10,
padding_y: 10,
margin_bottom: 50,
single_column_breakpoint: 700
});
});

/*
Ref:
Thanks to:
http://www.jqueryscript.net/layout/Simple-jQuery-Plugin-To-Create-Pinterest-Style-Grid-Layout-Pinterest-Grid.html
*/


/*
    Pinterest Grid Plugin
    Copyright 2014 Mediademons
    @author smm 16/04/2014

    usage:

     $(document).ready(function() {

        $('#blog-landing').pinterest_grid({
            no_columns: 4
        });

    });


*/
;(function ($, window, document, undefined) {
    var pluginName = 'pinterest_grid',
        defaults = {
            padding_x: 10,
            padding_y: 10,
            no_columns: 3,
            margin_bottom: 50,
            single_column_breakpoint: 700
        },
        columns,
        $article,
        article_width;

    function Plugin(element, options) {
        this.element = element;
        this.options = $.extend({}, defaults, options) ;
        this._defaults = defaults;
        this._name = pluginName;
        this.init();
    }

    Plugin.prototype.init = function () {
        var self = this,
            resize_finish;

        $(window).resize(function() {
            clearTimeout(resize_finish);
            resize_finish = setTimeout( function () {
                self.make_layout_change(self);
            }, 11);
        });

        self.make_layout_change(self);

        setTimeout(function() {
            $(window).resize();
        }, 500);
    };

    Plugin.prototype.calculate = function (single_column_mode) {
        var self = this,
            tallest = 0,
            row = 0,
            $container = $(this.element),
            container_width = $container.width();
            $article = $(this.element).children();

        if(single_column_mode === true) {
            article_width = $container.width() - self.options.padding_x;
        } else {
            article_width = ($container.width() - self.options.padding_x * self.options.no_columns) / self.options.no_columns;
        }

        $article.each(function() {
            $(this).css('width', article_width);
        });

        columns = self.options.no_columns;

        $article.each(function(index) {
            var current_column,
                left_out = 0,
                top = 0,
                $this = $(this),
                prevAll = $this.prevAll(),
                tallest = 0;

            if(single_column_mode === false) {
                current_column = (index % columns);
            } else {
                current_column = 0;
            }

            for(var t = 0; t < columns; t++) {
                $this.removeClass('c'+t);
            }

            if(index % columns === 0) {
                row++;
            }

            $this.addClass('c' + current_column);
            $this.addClass('r' + row);

            prevAll.each(function(index) {
                if($(this).hasClass('c' + current_column)) {
                    top += $(this).outerHeight() + self.options.padding_y;
                }
            });

            if(single_column_mode === true) {
                left_out = 0;
            } else {
                left_out = (index % columns) * (article_width + self.options.padding_x);
            }

            $this.css({
                'left': left_out,
                'top' : top
            });
        });

        this.tallest($container);
        $(window).resize();
    };

    Plugin.prototype.tallest = function (_container) {
        var column_heights = [],
            largest = 0;

        for(var z = 0; z < columns; z++) {
            var temp_height = 0;
            _container.find('.c'+z).each(function() {
                temp_height += $(this).outerHeight();
            });
            column_heights[z] = temp_height;
        }

        largest = Math.max.apply(Math, column_heights);
        _container.css('height', largest + (this.options.padding_y + this.options.margin_bottom));
    };

    Plugin.prototype.make_layout_change = function (_self) {
        if($(window).width() < _self.options.single_column_breakpoint) {
            _self.calculate(true);
        } else {
            _self.calculate(false);
        }
    };

    $.fn[pluginName] = function (options) {
        return this.each(function () {
            if (!$.data(this, 'plugin_' + pluginName)) {
                $.data(this, 'plugin_' + pluginName,
                new Plugin(this, options));
            }
        });
    }

})(jQuery, window, document);	</script>




    
    
    

</body>
</html>