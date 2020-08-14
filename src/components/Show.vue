<template>
    <div id="show">
        <!--点击按钮可以让对话框显示-->
        <button @click="show"></button>
            <!-- isShow为true时，对话框才显示
            isShow为false时，对话框就隐藏  -->
        <div v-show="isShow" class="alert">
            <!--点×可以隐藏对话框-->
            <a href="javascript:;" @click="hide"><img src="" alt=""></a>
            <div><img src="../assets/open-head.gif" alt=""></div>
            <div>
                <a href="#"><img src="../assets/qq_off.jpg" alt=""></a>
                <p>菩璞客服</p>
            </div>
            <div>
                <a href="#">
                    <img src="../assets/lianxi.gif" alt="">
                </a>
                <p>旺旺售前顾问</p>
            </div>
        </div>

       




    </div>
</template>
<style scoped>
    #show>button{
        width: 60px;
        height: 200px;
        /* display: block; */
        background: url(../assets/click.gif) no-repeat;
        border: 0;
        outline: none;
        position: fixed;
        top: 120px;
        z-index: 99;
    }
.alert{
    position:fixed;
    width:120px;
    height:260px;
    background-color:#fafafa;
    top: 120px;
    z-index: 100;
    text-align: center;
    line-height: 20px;
    border-radius: 10px;
    text-decoration: none;
}
.alert p{
    font-size: 12px;
    color: #666;
}
.alert>a{
    width: 15px;
    height: 15px;
    position:absolute;
    left: 110px;
    top: -10px;
    text-decoration: none;
    color: #7A7A7A;
    padding: 5px 5px;
    border:1px solid #e8e8e8;
    border-radius: 50%;
    background: url(../assets/cha.png) no-repeat center;
    background-color:#FAFAFA;
}

</style>
<script>
export default {
    data(){
        return {
            isShow:false
        }
    },
    methods:{
        show(){
          this.isShow=true;
        },
        hide(){
          this.isShow=false;
        }
    }
}
</script>