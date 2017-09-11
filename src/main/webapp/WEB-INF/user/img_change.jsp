<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/1
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/common/common.jsp"%>
<!DOCTYPE HTML>
<html  lang="zh">
<head>
    <meta charset="utf-8">
    <title>个人中心 | 驴友网</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
    <link rel="stylesheet" href="css/global.css" media="all">
    <link rel="stylesheet" href="css/boxy,jquery.fancybox-1.3.4.css">
    <link  href="css/aboutus.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/reg.css"  />
    <script src="js/jquery-1.4.4.min,LAB.min.js"></script>
    <script type="text/javascript">
        var userjson = '';
        var c_cityinfo = '';
    </script>
</head>
<body>
<div class="header">
    <div class="headWrap">
        <div class="headTop fn-clear">
            <h1 class="logo">
                <a href="${ctx}/user/index" title="驴友网" style="float: left;">驴友网</a>
            </h1>
            <h2 class="slogan" title="在旅途中相遇">在旅途中相遇</h2>

            <div class="loginInfo">
                <ul class="not_login">
                    <!-- 未登录
                        <li style="float:right"><a href="../login/register.htm" class="btn_reg">注册</a></li>
                        <li  style="float:right"><a href="../login/login.htm"  id="top-nav-login" class="btn_login">登录</a></li>
                    -->
                    <li style="float:right"><a href="${ctx}/user/logout">注销</a></li>
                    <li style="float:right"><a href="${ctx}/notice/apply">好友申请（0）</a>&nbsp;&nbsp;&nbsp;</li>
                    <li style="float:right"><a href="${ctx}/notice/message">站内信（0）</a>&nbsp;&nbsp;&nbsp;</li>
                    <li style="float:right"><a href="javascript:void(0);">${sessionScope.register.userName}</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    </li>
                </ul>
            </div>
        </div>
        <ul class="dropdown">
            <li>
                <a href="${ctx}/user/index">首页</a>
            </li>
            <li>
                <a href="${ctx}/mem/memory">旅游记忆</a>
            </li>
            <li>
                <a href="${ctx}/traveller/traveller">结伴游</a>
            </li>
            <li>
                <a href="${ctx}/strategy/strategy">景点攻略</a>
            </li>
        </ul>

        <div class="navSearch">
            <form action="${ctx}/mem/memory_search" method="get" id="searchForm" target="_blank">
                <input name="k" type="text" class="top-search-input" id="searchKey" value="搜索旅游记忆" maxlength="50"
                       autocomplete="off"/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
            <div id="keyword_tip_content"></div>
        </div>
    </div>
</div>
<!--top end-->

<div id="container" class="fn-clear">
    <div class="bottom">
        <div class="bottom_t"></div>
        <div class="bottom_c h650">
            <div class="bottom_c_l">
                <div class="title01"> 动态</div>
                <div class="list01 bk">
                    <ul>
                        <li>
                            <a href="${ctx}/user/state">
                                <div class="icon_bot"><img src="images/help13.png"></div>
                                我的动态</a>
                        </li>
                        <li>
                            <a href="${ctx}/user/state_friend">
                                <div class="icon_bot"><img src="images/help13.png"></div>
                                好友动态</a>
                        </li>
                    </ul>
                </div>
                <div class="title01"> 我的记忆</div>
                <div class="list01 bk">
                    <ul>
                        <li>
                            <a href="${ctx}/user/memeroy_add">
                                <div class="icon_bot"><img src="images/help12.png"></div>
                                发布新记忆</a>
                        </li>
                        <li>
                            <a href="${ctx}/user/memeroy_list/1/4">
                                <div class="icon_bot"><img src="images/help14.png"></div>
                                全部记忆</a>
                        </li>
                    </ul>
                </div>
                <div class="title01"> 相约驴友</div>
                <div class="list01 bk">
                    <ul>
                        <li>
                            <a href="${ctx}/traveller/travelAdd">
                                <div class="icon_bot"><img src="images/help12.png"></div>
                                发起旅游</a>
                        </li>
                        <li>
                            <a href="${ctx}/user/travel_list">
                                <div class="icon_bot"><img src="images/help13.png"></div>
                                我发起的旅游</a>
                        </li>
                    </ul>
                </div>
                <div class="title01"> 我的好友</div>
                <div class="list01 bk">
                    <ul>
                        <li>
                            <a href="${ctx}/user/friend/1/4">
                                <div class="icon_bot"><img src="images/help12.png"></div>
                                好友列表</a>
                        </li>
                    </ul>
                </div>
                <div class="title01">账号管理</div>
                <div class="list01 bk">
                    <ul>
                        <li class="un">
                            <a href="${ctx}/user/acccount_detail">
                                <div class="icon_bot"><img src="images/help12.png"></div>
                                基本信息</a>
                        </li>
                        <li>
                            <a href="${ctx}/user/img_change">
                                <div class="icon_bot"><img src="images/help13.png"></div>
                                修改头像</a>
                        </li>
                        <li>
                            <a href="${ctx}/user/password_change">
                                <div class="icon_bot"><img src="images/help14.png"></div>
                                修改密码</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="bottom_c_r">
                <h2 style="width:680px; height:40px; line-height:41px; background:#83bb4a url(images/reg-title-bg.png) repeat-x;
						color:#fefefe; text-indent:25px; font-size:20px; font-family:\9ED1\4F53; font-weight:400;">修改头像</h2>
                <ul class="zhuanti-list">
                    <li class="ui-box zhuanti-item">
                      <%--  <form method="post" action="#" >
                            <caption>
                                <strong class="title2">当前我的头像</strong><br /><br />
                                <p>如果你还没有设置自己的头像，系统会显示为默认头像，你需要自己上传一张新照片来作为自己的个人头像。</p><br />
                                <img src="http://avatar.8264.com/data/avatar/037/83/56/87_avatar_big.jpg" onerror="this.onerror=null;this.src='http://ucenter.8264.com/images/noavatar_big.gif'" />
                            </caption><br /><br />
                            <caption>
                                <strong class="title2">设置我的新头像</strong><br /><br />
                                <p>请选择一个新照片进行上传编辑。头像保存后，你可能需要刷新一下本页面(按F5键)，才能查看最新的头像效果。</p><br />
                                <embed width="450" height="253" scale="exactfit" src="http://ucenter.8264.com/images/camera.swf?inajax=1&appid=31&input=0897cG7VoeiI86Vp06jxHbg%2FFcTkRVWiJn4wPV1WyYvzDkjULGqqTJlbnDJB%2FOFxB9%2BwQiylSFGfBhFlYU6qFiqoIcZM2wv%2FIVPOWN3ju%2FLuH0XyoSTNPwSIiBofsvOE&agent=f95939cecaed79637c97e29779031c0e&ucapi=ucenter.8264.com&avatartype=virtual&uploadSize=2048" name="mycamera" quality="high" bgcolor="#ffffff" wmode="transparent" menu="false" swliveconnect="true" allowscriptaccess="always" type="application/x-shockwave-flash"/>

                            </caption>
                            <script type="text/javascript">document.write(AC_FL_RunContent('width','450','height','253','scale','exactfit','src','http://ucenter.8264.com/images/camera.swf?inajax=1&appid=31&input=0897cG7VoeiI86Vp06jxHbg%2FFcTkRVWiJn4wPV1WyYvzDkjULGqqTJlbnDJB%2FOFxB9%2BwQiylSFGfBhFlYU6qFiqoIcZM2wv%2FIVPOWN3ju%2FLuH0XyoSTNPwSIiBofsvOE&agent=f95939cecaed79637c97e29779031c0e&ucapi=ucenter.8264.com&avatartype=virtual&uploadSize=2048','id','mycamera','name','mycamera','quality','high','bgcolor','#ffffff','wmode','transparent','menu','false','swLiveConnect','true','allowScriptAccess','always'));
                            </script>
                            <input type="hidden" name="formhash" value="ce9e05e1" />
                        </form>--%>
                        <form method="post" action="${ctx}/user/img_change" id="form100" class="reg-form" enctype="multipart/form-data">
                            <a target="_blank" href="${photoPath}/${userInfo.photo}" class="gonglue_img fn-left"><label for="photo_view"><em>*</em>头像预览：</label>
                                <img src="${photoPath}/${userInfo.photo}" width="75" height="75" id="photo_view"  alt="${sessionScope.userInfo.userName}"/></a>
                            <p><label for="photo"><em>*</em>头像：</label>
                                <input name="photo" type="file" value="上传照片" class="input-txt" id="photo" autocomplete="off" size="43"/>
                            </p>
                            <a href="javascript:void(0);" id="submit" class="reg-login">发布</a>
                        </form>
                        <script>
                            $("#submit").click(function(){
                                $("#form100")[0].submit();
                            });
                        </script>
                    </li>

                </ul>

            </div>
        </div>
        <div class="bottom_b"></div>
    </div>
</div>
</div>
<!-- 底部footer 开始-->

<div class="footer " >
    <div class="footerWrap fn-clear">
        <ul class="about_roadqu ">
            <li><a href="#">关于驴友</a>|</li>
            <li><a href="#">联系我们</a>|</li>
            <li><a href="#">用户公约</a>|</li>
            <li><a href="#">意见反馈</a>|</li>
            <li><a href="#">帮助中心</a>|</li>
            <li><a href="#">友情链接</a></li>
        </ul>
        <div class="foot">
            <p><span>版权所有软件1001班
			<a href="#" >陈文平</a><a href="#" > 胡剑彬</a><a href="#" >林清华</a><a href="#" >汤怡青</a><a href="#" >袁泽</a><a href="#" >周晓丽</a>
			</span></p>
            <div class="sns">
                <span>关注我们： </span><a href="#" class="login_sina">新浪微博 </a><a href="#" class="login_qq">腾讯微博</a>
                <%--<a href="#" title="360绿色网站"><img src="http://trust.360.cn/img.php?sn=5229&id=5" border="0" /></a>--%>
                <!-- WPA Button Begin -->
                <!-- WPA Button END -->
            </div>
        </div>
    </div>
</div>
<!-- footer end -->
</body>
</html>
