<template>
    <div>
        <div class="footer" id="footer">
        <div id="foot">
          <div id="foot_down">
          <p>菩璞生物科技</p>
          <p><a href="http://www.beian.miit.gov.cn/">渝ICP备14000285号</a></p>
          <img src="../assets/home/logo.png" alt="">
          </div>
          <div class="foot_top">
            <ul>
              <li>帮助中心</li>
              <li>
                <a href="#">账号注册</a>
              </li>
            </ul>
            <ul>
              <li>服务支持</li>
              <li>
                <a href="#">化妆品消费提醒</a>
              </li>
              <li>
                <a href="#">售后政策</a>
              </li>
            </ul>
            <ul>
              <li>线下门店</li>
              <li>
                <a href="#">实体专柜</a>
              </li>
            </ul>
            <ul>
              <li>关注我们</li>
              <li>
                <a href="#">新浪微博</a>
              </li>
              <li>
                <a href="#">官方微信</a>
              </li>
            </ul>
            <ul>
              <li>联系我们</li>
              <li>
                <a href="#">通讯地址</a>
              </li>
            </ul>
        </div>
        
        </div>
        
      </div>
      <div id="my_dibu">
        <a href="#"><img src="../assets/home/dibu.png" alt=""></a>
      </div>
    </div>
</template>
<style scoped>
    #footer{
    width: 100%;
    background-color: #616161;
    border-top: 1px solid #e3e3e3;
    padding: 30px 0;
    margin-top: 0px;
    overflow: hidden;    
}
.foot_top{
    display:flex;
    width: 950px;
    margin-left: 48px;
}
#foot{
    width: 1200px;
    height: 180px;
    margin: 0 auto;
    font-size: 14px;
    color: #e0e0e0;
    line-height: 1.8;
    font-family: microsoft yahei;
}
#foot_down{
    font-size: 16px;
    line-height: 1.5;
    font-weight: bold;
    width: 124px;
    margin-right: 60px;
    float: right;
}
#foot_down a{
  /* color: rgb(242, 242, 242); */
  color: #e0e0e0;
  font-size: 12px;
  text-decoration: none;
  
}
#foot_down img{
  border-top-width: 0px;
  border-right-width: 0px;
  border-bottom-width: 0px;
  border-left-width: 0px;
  border-top-style: solid;
  border-right-style: solid;
  border-bottom-style: solid;
  border-left-style: solid;
  height: 90px;
  width: 66px;
}
.footer ul li{
  color: #d5d5d5;
  font-family: "Microsoft YaHei";
  font-size: 14px;
  font-weight: bold;
  height: 30px;
  line-height: 30px;
  margin-bottom: 2px;
  overflow: hidden;
  padding-right: 100px;
}
.footer ul li a{
    color: #e0e0e0;
    text-decoration: none;
    font-size: 12px;
    line-height: 24px;
    font-weight: lighter;
}
.footer ul li a:hover{
  color: #ff5722;
}
#my_dibu{
  width: 36px;
  height: 32px;
  position:fixed;
  bottom: 0px;
  right: 0px;
  background-color: rgba(0, 0, 0, .1);
  border-radius: 10px;
}
</style>
