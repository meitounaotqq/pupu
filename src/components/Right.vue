<template>
    <div>
         <!-- 右边固定框 -->
        <div id="right">
            <div class="right_1">
                <div><img src="../assets/home/icon_03.png" alt=""></div>
                <div><img src="../assets/home/icon_06.png" alt=""></div>
                <div><img src="../assets/home/icon_08.png" alt=""></div>
            </div>
            <div class="jiantou">
                <a href="#"><img src="../assets/home/jiantou.png" alt=""></a>
            </div>
        </div>
    </div>
</template>
<style scoped>
#right{
    width: 29px;
    height: 100%;
    position: fixed;
    right: 0px;
    top: 0px;
    border-right: 6px solid #3b3b3b;
    z-index: 99;
}
#right .right_1{
    position: absolute;
    padding:10px ;
    top: 40%;
    text-align: center;
}
#right>.right_1>div{
    background-color: #3b3b3b;
    margin-left:-12px;
    padding:8px ;
    margin-bottom:1px;
} 
#right>.jiantou{
    width: 20px;
    height: 20px;
    position: absolute;
    bottom: 0px;
    right: 0px;
    background-color: #3b3b3b;
    padding:7px 5px;
}
</style>