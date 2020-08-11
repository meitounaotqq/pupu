<template>
    <div id="product237">
        <div id="top">
            <!-- 欢迎光临 -->
            <div class="top-main">
                <!-- 注册 登录 购物车 ul1 -->
                <ul id="my_ul1">
                    <li><a href="/register" id="reg_a">注册</a></li>
                    <li><a href="/login">登录</a></li>  
                    <li id="my_ul1_li"><a href="javascript:;">
                        微信商城
                        <img src="../assets/home/jiantou_03.png" alt="">
                    </a>
                    </li>     
                </ul>
                <p>您好，欢迎光临菩璞</p>
                
            </div>
        </div>
        <!-- 搜索 -->
        <div class="top-search">
            <input type="text" class="top_kuang">
            <button class="top_btn">搜索</button>
            <a href="#" class="my_a">
                <span>
                    购物车 
                    <em> {{i}} </em>
                    件
                </span>
            </a>
        </div>
        <!-- 全部商品分类 -->
        <div id="my_ul">
            <ul>
                <li><a href="#">全部商品分类</a></li>
                <li><a href="/">首页</a></li>
                <li><a href="#">产业生态</a></li>
                <li><a href="#">蜡梅</a></li>
                <li><a href="#">莲识</a></li>
                <li><a href="#">文创</a></li>
                <li><a href="#">技术孵化与转让</a></li>
                <li><a href="#">公司动态</a></li>
            </ul>
        </div>
        <hr>

        <!-- 美妆>>粉底>>莲识玉肌粉底露 LIQUID FOUNDATION【发明专利产品】 -->
        <div>
            <p>美妆>>粉底>>莲识玉肌粉底露 LIQUID FOUNDATION【发明专利产品】</p>
        </div>


        <!-- 详情 -->
        <div>

        </div>







    </div>
</template>
<style scoped>
#product237 hr{
    /* width: 100%; */
    border:1px solid  #f00;
    margin-top:0px ;
}
#my_ul1{
  display:flex;
  float: right;
  height:100%;
  align-items: center;
}
#top{
    height: 40px;
    background-color: #f9f9f9;
    border-bottom: 1px solid #e5e5e5;
}
.top-main{
    width: 1200px;
    height: 100%;
    margin: 0 auto;
    color: #000;
    font-size: 13px;
    line-height: 40px;
}
.top-main>p{
    width: 100%;
    font-weight: lighter;
}
.top-main a{
    color: #898778;
    height: 40px;
    line-height: 40px;
    text-decoration: none;
    display: block;
    padding-left: 12px;
}
.top-main a:hover{
  color:#ff5722;
}
/* 搜索栏 */
.top-search {
    width: 1200px;
    height: 93px;
    margin: 0 auto;
    box-sizing: border-box;
    overflow: hidden;
}
.top-search a{
    display: inline-block;
    float: right;
    text-decoration: none;
    color: #000;
    font-size: 12px;
}
.top-search .top_kuang{
    float: left;
    width: 351px;
    height: 31px;
    border: 2px solid #e62129;
    color: #D1D1D1;
    background-image: url(../assets/product237/big.png);
    background-repeat: no-repeat;
    /* background-position: 10px -80px; */
    padding-left: 35px;
}
.top-search .top_btn{
    float: left;
    width: 93px;
    height: 35px;
    background-color: #e62129;
    color: #fff;
    /* text-align: center; */
    line-height: 35px;
    font-size: 16px;
    cursor: pointer;
    border: none;
    margin-left:-95px ;
}
#my_ul{
    width: 1200px;
    margin: 0 auto;
    position: relative;
}
#my_ul>ul{  
    /* margin-left:250px; */
    display:flex;
    margin-right: 120px;

}
#my_ul>ul>li>a{
    text-decoration: none;
    color: #666;
    font-weight: lighter;
    /* text-align: center; */
    line-height: 35px;
    font-size: 16px;
    padding-left: 25px;
    padding-right: 25px;
}
#my_ul>ul>li{
    color: #333;

    text-align: center;
    line-height: 35px;
    font-size: 16px;
    font-weight: lighter;
}
#my_ul>ul>li>a:hover{
    color: #f00;
    width: 220px;
    height: 40px;
    line-height: 40px;
    text-align: center;
}
#my_ul>ul>li:focus-within{
    position: relative;
    float: left;
    width: 220px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    background-color: #e62129;
    color: #fff;
    font-size: 16px;
    font-weight: normal;
    z-index: 99;

}
</style>




