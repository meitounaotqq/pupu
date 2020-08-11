<template>
    <div id="app">
        <div id="denglu">
			<p class="p1">欢迎登录</p>
        </div>
        <div id="login">
            <div id="userLogin">
                <div>
                    <span>用户登录</span>
                    <a href="/register" id="myA">立即注册</a>
                </div>
                <div>
                    <input type="text" class="inp" v-model="phone" placeholder="邮箱/手机号">
                </div>
                <div>
                    <input type="password" class="inp" v-model="pwd" placeholder="密码">
                </div>
                <div>
                    <input type="checkbox" id="zidong" ><label for="zidong">自动登录</label>
                    <a href="#" id="mima">忘记密码？</a>
                </div>
                <div id="btn">
                    <button @click="login">登录</button>
                </div>
                <div id="xia">
                    <p>使用合作网站账号登录商城：</p>
                    <div>
                    <em><img src="../assets/login/pupu_login_qq.gif" alt=""></em>
                    <em><img src="../assets/login/pupu_login_taobao.gif" alt=""></em>
                    <em><img src="../assets/login/pupu_login_weixin.gif" alt=""></em>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
    #denglu .p1{
		color:#585858 ;
		font-size: 24px;
		font-family: "microsoft yahei";
		position: absolute;
		left:33.3%;
		top:30px;
		border-left: 1px solid #E5E5E5;
	    padding-left: 25px;
	}
    #login{
        width: 100%;
        height: 440px;
        background-color:#FE3F37 ;
        margin-top: 100px;
    }
    #userLogin{
            width: 305px;
    height: 350px;
    background: #FFF;
    position: absolute;
    top: 0px;
    left: 740px;
    padding: 15px 25px;
    padding-left: 28px;
    margin-top: 140px;
    }
    #userLogin :first-child{
        margin-top:10px ;
        margin-bottom: 15px;
    }
    #userLogin span{
        font-size: 18px;
        color:#313131;
    }
    #myA{
		text-decoration: none;
        color: #268BF3;
        font-size: 14px;
        position: relative;
        right:-178px;
    }
    #userLogin .inp{
        width:290px;
        height: 38px;
        padding-left:10px ;
        margin: 8px 0;
        border: 0;
        border:1px solid #D9DBDE;
    }
    #userLogin label{
        font-size:12px;
        color:#6D6D6D;
    }
    #mima{
		text-decoration: none;
        color: #6D6D6D;
        font-size: 12px;
        position: relative;
        right:-178px;
    }
    #userLogin button{
		width: 300px;
		height: 40px;
		background-color: #FE5722;
		border: 0;
		color:#fff;
		font-size: 18px;
	}
    #btn{
        margin-top:12px ;
        margin-bottom: -8px;
    }
    #xia>p{
        color: #BFB4AC;
        font-size: 12px;
    }
    #xia em{
        padding-right:5px ;
    }
    #xia div{
        position: relative;
        top: -17px;
    }
</style>
<script>
export default {
    data(){
        return{
            phone:"",
            pwd:""
        }
    },
    methods:{
        login(){
			this.axios.get("/user/login?phone="+this.phone+"&password="+this.pwd).then(res=>{
				this.$router.push("/");
			})
		}

    }
    
}
</script>