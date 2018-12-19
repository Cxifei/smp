<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">

    <title>风车乐栈-乐随你动</title>
    <link href="images/favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" href="css/search.css">
    <script src="js/collect.js"></script>
    <script src="js/hm.js">

    </script>
    <script type="text/javascript" charset="UTF-8"> var apmCollectData = apmCollectData || [];</script>

    <script type="text/javascript" src="js/time.js"></script>
    <script type="text/javascript" src="js/time.js"></script>
</head>

<body>
<div class="header">
    <h1 class="logo">
        <a>
           <img src="images/logoName.png">
        </a>
    </h1>
    <div class="search_wrapper top_search">
        <div class="search_input"><input type="text">
            <div class="searh_btn"><i class="search_icon"></i><span>搜索</span></div>
        </div>
        <div class="search_recommend top_search_recommend hide" style="display: none;">

        </div>
        <div class="search_histroy top_search_histroy">

        </div>
    </div>
    <div class="topNav fr">
        <ul>
            <li>
                <a target="_blank" href="https://www.kugou.com/shop/help/serviceCenter">客服中心</a>
            </li>
            <li>
                <a target="_blank" href="http://www.kugou.com/hr/html/index.html">招贤纳士</a>
            </li>
            <li>
                <a target="_blank" href="http://vip.kugou.com/">会员中心 </a>
            </li>
        </ul>
        <div class="login_area">
            <div id="login_in" class="clearfix">
                <a class="login_btn" id="login_btn">登录</a>
                <a target="_blank" href="http://www.kugou.com/reg/web/" class="regin_btn" id="regin_btn">注册</a>
            </div>
            <div id="login_out" class="clearfix">
                <img class="user_img" src="https://www.kugou.com/yy/html/search.html">
                <span class="user_name"></span>
            </div>
            <div id="user_menu" class="user_menu">
                <div class="topArrow1"></div>
                <div class="topArrow2"></div>
                <ul>
                    <li>
                        <a target="_blank" href="http://www.kugou.com/newuc/user/uc/"><span class="user_icon1"></span>个人帐号</a>
                    </li>
                    <li>
                        <a href="http://www.kugou.com/newuc/login/outlogin"><span class="user_icon2"></span>退出登录</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="navWrap">
    <div class="nav">
        <ul class="homeNav">
            <li>
                <a class="normal" href="https://www.kugou.com/">首页</a>
            </li>
            <li>
                <a class="normal" href="https://www.kugou.com/yy/html/rank.html">榜单</a>
            </li>
            <li>
                <a class="normal" id="productCenter" href="http://download.kugou.com/">下载客户端</a>
            </li>
            <li class="more" id="more">
                <a href="https://www.kugou.com/yy/html/search.html" class="iconMore" id="showMore">更多</a>
            </li>
        </ul>
        <ul class="secondMenu" id="secondMenu">
            <li>
                <a href="https://www.kugou.com/fmweb/html/index.html">电台</a>
            </li>
            <li>
                <a href="https://www.kugou.com/mvweb/html/">MV</a>
            </li>
            <li>
                <a href="https://www.kugou.com/yy/html/special.html">歌单</a>
            </li>
            <li>
                <a href="https://www.kugou.com/yy/html/singer.html">歌手</a>
            </li>
        </ul>
        <ul class="subNav">
            <li>
                <a target="_blank" href="http://fanxing.kugou.com/?action=spreadIndex&amp;id=3" class="icon icon-nav1">音乐直播</a>
            </li>
            <li>
                <a target="_blank" href="http://live.kugou.com/" class="icon icon-nav2">酷狗LIVE</a>
            </li>
            <li>
                <a target="_blank" href="http://www.kugou.com/imusic/" class="icon icon-nav3">音乐人</a>
            </li>
            <li>
                <a target="_blank" href="http://games.kugou.com/?f=7" class="icon icon-nav4">游戏</a>
            </li>
            <li>
                <a target="_blank" href="https://www.kugou.com/shop/product/kugouproduct/index.html"
                   class="icon icon-nav5">商城</a>
            </li>

        </ul>
    </div>
</div>

<div class="search_header">
    <div class="search_wrapper content_search">
        <div class="search_input"><input type="text">
            <div class="searh_btn"><i class="search_icon"></i><span>搜索</span></div>
        </div>
        <div class="search_recommend content_search_recommend hide" style="display: none;">

        </div>
        <div class="search_histroy content_search_histroy">

        </div>
    </div>
</div>
<div class="search_content">
    <ul class="search_tab clearfix">
        <li class="active" data-type="song">
            <a id="song" href="javascript:;">单曲</a>
        </li>
        <li data-type="special">
            <a id="special" href="javascript:;">歌单</a>
        </li>
        <li data-type="mv">
            <a id="mv" href="javascript:;">MV</a>
        </li>
    </ul>

    <div class="search_song" id="search_song" style="display: block;">
        <div class="song_list_header">
            <div class="similar_singer" style="display: none;">
                <a href="https://www.kugou.com/yy/html/search.html" class="singer_img" target="_blank"><img
                        src="./酷狗音乐 - 就是歌多_files/singer.jpg" alt=""></a>
                <p class="singer_name">
                    <a href="https://www.kugou.com/yy/html/search.html">周杰伦</a>
                </p>
                <p class="singer_info"><span class="search_song_num"><i>204</i>单曲</span><span class="search_mv_num"><i>301</i>MV</span>
                </p>
            </div>
            <div class="action_area">
                <p class="search_key_word">搜索到<i>“好的”</i></p>
                <p class="search_tips">相关的歌曲</p>
                <a class="play_all" href="javascript:;"><span><i class="search_icon"></i>播放</span></a>
            </div>
        </div>
        <div class="song_list">
            <ul class="list_header clearfix">
                <li class="width_f_li song_name_li">
                    <span class="search_icon checkall"></span>歌曲名
                </li>
                <li class="width_s_li">
                    专辑
                </li>
                <li class="width_t_li">
                    时长
                </li>
            </ul>
            <ul class="list_content clearfix" id="list_content1545027424500">
                <li class="clearfix">
                    <div class="width_f_li clearfix">
                        <span class="search_icon checkbox"></span>
                        <a class="song_name" title="星弟 - 好的" href="javascript:;">星弟 - <em>好的</em>
                        </a>
                    </div>
                    <div class="width_s_li">
                        <a class="album_name" title="《我是星弟》" target="_blank" href="#">《我是星弟》
                        </a>&nbsp;
                    </div>
                    <div class="width_t_li">03:54</div>
                    <div class="play-item"><span class="common_icon icon_play"></span>
                        <span class="common_icon icon_download"
                              onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;hidedown&#39;, &#39;hidecilick&#39;, &#39;hidepc&#39;]);">
						</span>
                        <span class="common_icon icon_share">

						</span>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="search_special" id="search_special" style="display: none;">
        <div class="special_header">
            <div class="action_area">
                <p class="search_key_word">搜索到<i>周杰伦</i></p>
                <p class="search_tips">相关的歌单</p>
            </div>
        </div>
        <div class="special_list">
            <ul class="list_header clearfix">
                <li class="width_f_li">
                    <span class="special_header_name">歌单名</span>
                </li>
                <li class="width_s_li">
                    创建人
                </li>
                <li class="width_t_li">
                    收藏
                </li>
            </ul>
            <ul class="list_content clearfix">

            </ul>
        </div>
    </div>
    <div class="search_mv" id="search_mv" style="display: none;">
        <div class="mv_header">
            <div class="action_area">
                <p class="search_key_word">搜索到<i>周杰伦</i></p>
                <p class="search_tips">相关的MV</p>
            </div>
        </div>
        <div class="mv_list">
            <ul>
            </ul>
        </div>
    </div>
    <div class="loading" id="before_page" style="display: none;">加载中...</div>
</div>
<div class="footerWrapper">
    <div class="footer">
        <div class="links">
            <a hidefocus="true" href="https://www.kugou.com/about/aboutus.html" target="_blank">关于酷狗</a>|
            <a hidefocus="true" href="javascript:void(0);" id="report">监督举报</a> |
            <a hidefocus="true" href="https://www.kugou.com/about/adservice.html" target="_blank">广告服务</a> |
            <a hidefocus="true" target="_blank" href="https://www.kugou.com/about/copyRightGuide.html">版权指引</a>|
            <a target="_blank" href="https://www.kugou.com/about/privacy.html">隐私政策</a> |
            <a hidefocus="true" target="_blank" href="https://www.kugou.com/about/protocol.html">用户服务协议</a> |
            <a hidefocus="true" target="_blank" href="http://www.kugou.com/company/partners.html">推广合作</a> |
            <a hidefocus="true" target="_blank" href="http://www.kugou.com/imusic/">酷狗音乐人</a> |
            <a hidefocus="true" target="_blank" href="http://tui.kugou.com/">酷狗音乐推</a> |
            <a hidefocus="true" href="http://www.kugou.com/hr/html/index.html" target="_blank">招聘信息</a> |
            <a hidefocus="true" href="https://www.kugou.com/shop/help/serviceCenter" target="_blank">客服中心</a> |
            <a hidefocus="true"
               href="http://survey.kugou.com/default/index/i=40CD7B8437008E65E67D82D9044C15C99C2E699859F51338"
               target="_blank">用户体验提升计划</a>
        </div>
        <div class="copyright">
            <p>我们致力于推动网络正版音乐发展，相关版权合作请联系copyrights@kugou.com</p>

            <p>Copyright&nbsp;&nbsp;©&nbsp;&nbsp;2010-2018 WindMill-Inc.All Rights Reserved
                <a hidefocus="true" class="office-verification"
                   href="http://netadreg.gzaic.gov.cn/ntmm/WebSear/WebLogoPub.aspx?logo=440106106022006022000209"
                   target="_blank"></a>
            </p>
        </div>
    </div>
</div>
<script type="text/javascript" charset="UTF-8" src="./酷狗音乐 - 就是歌多_files/jquery.js"></script>
<script type="text/javascript" charset="UTF-8" src="./酷狗音乐 - 就是歌多_files/dialog.js"></script>
<script src="./酷狗音乐 - 就是歌多_files/repalceHttpsImg.js"></script>
<!-- <script type="text/javascript"  charset="UTF-8" src="http://www.kugou.com/yy/static/js/search/jstorage.js"></script> -->
<!-- <script type="text/javascript"  charset="UTF-8" src="http://www.kugou.com/yy/static/js/search/textChange.min.js"></script> -->
<script type="text/javascript" charset="UTF-8" src="./酷狗音乐 - 就是歌多_files/search.js"></script>
<script src="./酷狗音乐 - 就是歌多_files/kguser_min.js"></script>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?aedee6983d4cfc62f509129360d6bb3d";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    (function () {
        var apm = document.createElement("script");
        apm.src = "https://jswebcollects.kugou.com/v2/web/collect.js?appid=2400";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(apm, s);
    })();
    var reportDialog = null;
    $("#report").click(function (e) {
        e.preventDefault();
        if (reportDialog) {
            return;
        }
        var reportDialog = dialog({
            title: '提示',
            skin: 'report-dialog',
            width: 435,
            height: 105,
            fixed: true,
            content: [
                " <div class=\"report-content\" style=\"padding:10px;\">",
                "<div class=\"report-tips\" style=\"lin-height:22px;padding-bottom:25px;\"><p >为了倡导诚信、正直、敬业、积极的企业文化，防治舞弊，欢迎您</p><p>对我司存在的舞弊行为通过邮箱进行举报。</p></div>",
                " <div class=\"report-mail\">举报邮箱：<span style=\"color:#3399ff\">jubao@kugou.com</span></div>",
                "</div>"
            ].join(""),
            onclose: function () {
                reportDialog = null;
            }
        }).show();
    });
</script>


</body>
</html>