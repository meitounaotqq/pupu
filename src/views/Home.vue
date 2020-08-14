<template>
  <div class="home">
    <div id="top">
      <div id="black"> 
        <!-- 注册 登录 购物车 ul1 -->
        <ul id="my_ul1">
          <li><a href="/register" id="reg_a">注册</a></li>
          <li><a href="/login">登录</a></li>  
          <li id="my_ul1_li"><a href="#"><img src="../assets/home/cart.png" alt="">购物车</a></li>     
        </ul>
        <!-- 微信商城 -->
        <ul id="my_ul2">
          <li>
            <router-link to="/"><img src="../assets/home/home.png" alt="" id="my_img"></router-link>
            <a href="javascript:;">微信商城
              <img src="../assets/home/jiantou_03.png" alt="">
            </a>
          </li>
        </ul>
      </div>
    </div>
        <!-- 导航 text 产业生态.... -->
    <div id="text">
      <!-- 输入框 -->
      <div>
        <input type="text" placeholder="请输入关键字" v-model="value">
        <router-link to='/search'> 
          <img src="../assets/home/big.png" @click="img">
        </router-link>
      </div>
      <ul>
        <li>产业生态</li>
        <li>蜡梅</li>
        <li>莲识</li>
        <li>文创</li>
        <li>技术孵化与装让</li>
        <li>公司动态</li>
      </ul>
    </div>
    <!-- 轮播图 -->
      <div id="carousel">
        <!-- 透明导航栏 -->
        <div id="my_touming">
          <ul>
            <li><a href="#">香水</a><img src="../assets/home/dayu.png"></li>
            <li><a href="#">香氛</a><img src="../assets/home/dayu.png"></li>
            <li><a href="#">美妆</a><img src="../assets/home/dayu.png"></li>
            <li><a href="#">洗护</a><img src="../assets/home/dayu.png"></li>
            <li><a href="#">礼品卡</a><img src="../assets/home/dayu.png"></li>
            <li><a href="#">文创</a><img src="../assets/home/dayu.png"></li>
          </ul>
        </div>
        <el-carousel  height="460px" >
          <el-carousel-item v-for="item in assets" :key="item.url">
            <img :src="item.url">
          </el-carousel-item>
        </el-carousel>
      </div>
      <!-- one轮播图下第一行图片 -->
      <div id="my_one">
        <ul>
          <li v-for="(v,k) of imgs" :key="k">
            <img :src="v">
          </li>
        </ul>
      </div>
      <!-- 以下图片 -->
      <div id="downstair">
        <div class="down">
          <p>莲识护肤系列</p>
          <!-- 左边图片 -->
          <div>
            <img src="../assets/home/lianshi/two_zuo.jpg" alt="">
            <div>
              <ul>              
                <li v-for="(v,k) of img1" :key="k">
                  <img :src="v.img" alt="">
                  <br>
                  <a href="#">{{v.title}}</a>
                  <p>￥{{v.price.toFixed(2)}}</p>
                </li>
              </ul>
            </div>
          </div>  
        </div>
        <div class="my_lianshi">
        <img src="../assets/home/lianshi/two_xia.jpg">
        </div>
        <!-- /* 蜡梅香水、洗护系列 */ -->
        <div class="down">
          <p>蜡梅香水、洗护系列</p>
          <!-- 左边图片 -->
          <div>
            <img src="../assets/home/xihu/san_zuo.jpg" alt="">
            <div>
              <ul>              
                <li v-for="(v,k) of img2" :key="k">
                  <img :src="v.img" alt="">
                  <br>
                  <a href="#">{{v.title}}</a>
                  <p>￥{{v.price.toFixed(2)}}</p>
                </li>
              </ul>
            </div>
          </div>  
        </div>
        <div class="my_lianshi">
        <img src="../assets/home/xihu/san_xia.jpg">
        </div>
        <!-- 服饰 -->
        <div class="down">
          <p>服饰</p>
          <!-- 左边图片 -->
          <div>
            <div>
            <img src="../assets/home/fushi/fushi_zuo1.jpg" alt="">
            <img src="../assets/home/fushi/fushi_zuo2.jpg" alt="">
            </div>
            <div>
              <ul>              
                <li v-for="(v,k) of img3" :key="k">
                  <img :src="v.img" alt="">
                  <br>
                  <a href="#">{{v.title}}</a>
                  <p>￥{{v.price.toFixed(2)}}</p>
                </li>
              </ul>
            </div>
          </div>  
        </div>
        <div class="my_lianshi">
        <img src="../assets/home/fushi/fushi_xia.jpg">
        </div>
        <!-- 文创—笔记本/便签/笔盒 -->
        <div class="down">
          <p>服饰</p>
          <!-- 左边图片 -->
          <div>
            <div>
            <img src="../assets/home/biji/biji_zuo1.jpg" alt="">
            <img src="../assets/home/biji/biji_zuo2.jpg" alt="">
            </div>
            <div>
              <ul>              
                <li v-for="(v,k) of img4" :key="k">
                  <img :src="v.img" alt="">
                  <br>
                  <a href="#">{{v.title}}</a>
                  <p>￥{{v.price.toFixed(2)}}</p>
                </li>
              </ul>
            </div>
          </div>  
        </div>
        <div class="my_lianshi">
          <img src="../assets/home/biji/biji_xia.jpg">
        </div>
        <!-- 为您推荐 -->
        <div id="my_tuijian">
          <p>为您推荐</p> 
        </div>
        
        <div class="tuijian">
          <ul>
            <li>
              <a href="#"><img src="../assets/home/tuijian/tuijian1.jpg" alt=""></a>
              <a href="#"><p>文创-人文古画文化创意笔记本</p></a>
              <p>￥10.00</p>
            </li>
            <li>
              <a href="#"><img src="../assets/home/tuijian/tuijian2.jpg" alt=""></a>
              <a href="#"><p>文创-中华味道文化创意笔记本</p></a>
              <p>￥10.00</p>
            </li>
            <li>
              <a href="#"><img src="../assets/home/tuijian/tuijian3.jpg" alt=""></a>
              <a href="#"><p>文创-重庆文化创意笔记本</p></a>
              <p>￥10.00</p>
            </li>
          </ul>
        </div>
        
        <div id="zheng">
          <img src="../assets/home/tuijian/di_tiao.jpg" alt="">
        </div>
        
      </div>
      
      

<my-footer></my-footer>
<my-show></my-show>
<my-right></my-right>

<!-- 唯一div -->
  </div>
</template>

<script>
// import Footer from '../components/Footer.vue';
  export default{
    data(){
        return {
            assets:[
                {url: require("../assets/home/carousel/home_banner1.jpg")},
                {url: require("../assets/home/carousel/home_banner2.jpg")},
                {url: require("../assets/home/carousel/home_banner3.jpg")},
                {url: require("../assets/home/carousel/home_banner4.jpg")}
          ],
          imgs:[
            require("../assets/home/one/one_1.jpg"),
            require("../assets/home/one/one_2.jpg"),
            require("../assets/home/one/one_3.jpg"),
            require("../assets/home/one/one_4.jpg")
          ],
          img1:[],
          img2:[],
          img3:[],
          img4:[],
          value:"",
          items:[]
        }
    },
    methods:{
      getData(){
        this.axios.get('/product/list?category=10').then(res=>{
          var data=res.data;
          data.forEach(element => {
            if(element.img){
            element.img=require('../assets/home/lianshi/'+element.img)
            }
            this.img1.push(element)
          });
        });
      },
      getData2(){
        this.axios.get('/product/list?category=20').then(res=>{
          var data=res.data;
          data.forEach(element => {
            if(element.img){
            element.img=require('../assets/home/xihu/'+element.img)
            }
            this.img2.push(element)
          });
        });
      },
      getData3(){
        this.axios.get('/product/list?category=30').then(res=>{
          var data=res.data;
          data.forEach(element => {
            if(element.img){
            element.img=require('../assets/home/fushi/'+element.img)
            }
            this.img3.push(element)
          });
        });
      },
      getData4(){
        this.axios.get('/product/list?category=40').then(res=>{
          var data=res.data;
          data.forEach(element => {
            if(element.img){
            element.img=require('../assets/home/biji/'+element.img)
            }
            this.img4.push(element)
          });
        });
      },
      img(){
      this.axios.get('/product/search?title='+this.value).then(res=>{
        var data=res.data;
        data.forEach(item=>{
          if(item.category==10){
          item.img=require('../assets/home/lianshi/'+item.img)
          }else if(item.category==20){
          item.img=require('../assets/home/xihu/'+item.img)
          }else if(item.category==30){
          item.img=require('../assets/home/fushi/'+item.img)
          }else if(item.category==40){
          item.img=require('../assets/home/biji/'+item.img)
          }
          this.items.push(item);
          })
      })
    }
    },
    mounted(){
      this.getData();
      this.getData2();
      this.getData3();
      this.getData4();
    },
    // components{
    //   footer
    // }
    
}

</script>
  
<style scoped>
/* <!-- divtop黑条 --> */
#top{
  width: 100%px;
  height: 50px;
  background-color:#474443 ;
}
/* <!-- div black中间部分 --> */
#black{
  width: 1200px;
  height:100%;
  margin: 0 auto;
}
#black a{
  text-decoration: none;
  color: #aaa;
  font-size: 14px;
  padding-right: 20px;
}
#black>ul>li{
  list-style: none;
}
/* <!-- 注册 登录 购物车 ul1 --> */
#my_ul1{
  display:flex;
  float: right;
  height:100%;
  align-items: center;
}
#reg_a:hover{
  color:#ff5722;
}
#my_ul1_li>a:hover{
  color:#fff;
}
#my_img{
  margin-top:15px ;
}
/*导航*/

/* <!-- 导航 text 产业生态.... --> */
#text{
  width:1200px;
  height: 120px;
  position: relative;
  line-height:120px;
  margin:0 auto;
}
#text>ul{
  display: flex;
  margin-left:250px;
}
#text>ul>li{
  list-style: none;
  font-size: 18px;
  margin-right:30px;
  color: #6F6F6F;
}
#text>div{
  float:right;
}
#text input{
  width: 250px;
  height: 46px;
  padding-left:10px ;
  border: 1px solid #E0E0E0;
}
#text img{
  border: 1px solid #E0E0E0;
  position: absolute;
  top:37px;
  margin-left:-50px;
  /* margin-top: 20px; */
  padding: 12px;
  background-color: #F5F3F0;
}
/* 轮播图 */
#carousel{
  width:1200px;
  margin:0 auto;
  position: relative;
}
/* 透明导航栏 */
#my_touming{
  list-style: none;
  width: 230px;
  height: 440px;
  background-color: rgba(0,0,0,.5);
  position: absolute;
  z-index: 99;
}
#my_touming a{
  text-decoration: none;
  color: #f0f0f0;
  font-size: 14px;
  width: 170px;
  overflow: hidden;
  /* white-space: nowrap; */
  /* text-overflow: ellipsis; */
  line-height: 15px;
  display: inline-block;
  padding-left: 25px;
  font-weight: lighter;
  line-height: 38px;
}
#my_touming img{
  margin-bottom:10px;
}
#my_touming:first-child{
  padding-top: 20px;
}
/* one轮播图下第一行图片 */
#my_one{
  width: 1200px;
  margin: 0 auto;
}
#my_one>ul{
  display:flex;
  justify-content: space-between;
}

 /* 以下图片  */
#downstair{
  width: 100%;
  background-color: #F5F3F0;
  margin-top: 28px;
}
.down{
  width: 1200px;
  margin: 0 auto;
}
.down>p{
    font-size: 24px;
    line-height: 40px;
    color: #212121;
    font-weight: lighter;
    padding-top: 28px;
    padding-bottom: 10px;
}
.down ul{
  display: flex;
  justify-content: space-between;

}
/* 莲识护肤系列 */
.down>div{
  display: flex;
}
.down>div>div>ul{
  display: flex;
  width: 960px;
  flex-wrap: wrap;
  margin-left: 20px;
  justify-content: space-between;
}
.down>div>div>ul>li{
  flex: 0 0 24%;
  width:230px ;
  height: 300px;
  background-color: #fff;
  margin-bottom:10px ;
  text-align: center;
}
.down>div>div>ul>li img{
  margin-top: 20px;
}
.down>div>div>ul>li a{
    display:inline-block;
    text-decoration: none;
    font-weight: lighter;
    font-size: 14px;
    color: #333;
    margin-top: 10px;
    height:40px;
    line-height: 20px;
    overflow:hidden; 
    padding:0 20px;
}
.down>div>div>ul>li p{
  color: #FB5621;
  font-size: 14px;
  margin-top: 14px;
}
.my_lianshi{
  width: 1200px;
  padding-top: 30px;
  margin: 0 auto;
}
/* 为您推荐 */
#my_tuijian{
  width: 1200px;
  padding-top: 20px;
  margin: 0 auto;
}
#my_tuijian p{
  color: #212121;
  font-size: 24px;
  line-height: 40px;
}
.tuijian{
  width: 1200px;
  margin: 0 auto;
}
.tuijian li{
  width: 230px;
  height: 247px;
  background-color: #fff;
  margin-top:10px;
  position:relative;
  margin-right:10px ;
}
.tuijian a{
  text-decoration: none;
  font-size: 15px;
  color: #666;
  margin: 6px 10px 10px 10px;
  height: 24px;
  white-space: normal;
  text-overflow: ellipsis;
  overflow: hidden;
  padding: 10px;
  text-align: center;
}
.tuijian>ul{
  display: flex;
} 
.tuijian>ul>li>p:last-child{
  color: #ff5257;
  text-align: center;
  font-size: 15px;
}
#zheng{
  width: 1200px;
  margin: 0 auto;
  padding-bottom:30px ;
  padding-top: 30px;
}
</style>