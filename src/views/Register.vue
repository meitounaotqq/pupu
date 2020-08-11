<template>
    <div id="app">
		<div id="zhuce">
			<p class="p1">欢迎注册</p>
			<p class="p2">我已注册，现在就去<a href="/login">登录</a></p>
		</div>
		<div id="reg">
			<table></table>
			<table id="tab">
				<tr>
					<td class="left">手机</td>
					<td>
						<input type="text" id="phone" @focus="info" @blur="checkphone" v-model="phone">
					</td>
					<td class="msg" :class="textColor">
						<img v-if="img==1" src="../assets/hui.jpg" alt="">
    					<img v-else-if="img==2" src="../assets/hongtan.jpg" alt="">
    					<img v-else-if="img==3" src="../assets/langou.jpg" alt="">
    					<img v-else >
						{{phoneMsg}}
					</td>
				</tr>
				<tr>
					<td class="left">密码</td>
					<td>
						<input type="password" id="pwd" @focus="infopwd" @blur="checkpwd" v-model="pwd">
					</td>
					<td class="msg" :class="textColor2">
						<img v-if="img==4" src="../assets/hui.jpg" alt="">
    					<img v-else-if="img==5" src="../assets/hongtan.jpg" alt="">
    					<img v-else-if="img==6" src="../assets/langou.jpg" alt="">
    					<img v-else >
						{{pwdMsg}}
					</td>
				</tr>
				<tr>
					<td class="left">确认密码</td>
					<td>
						<input type="password" id="cpwd" @focus="infocpwd" @blur="checkcpwd" v-model="cpwd">
					</td>
					<td class="msg" :class="textColor3">
						<img v-if="img==7" src="../assets/hui.jpg" alt="">
    					<img v-else-if="img==8" src="../assets/hongtan.jpg" alt="">
    					<img v-else-if="img==9" src="../assets/langou.jpg" alt="">
						<img v-else-if="img==10" src="../assets/hongtan.jpg" alt="">
    					<img v-else >
						{{cpwdMsg}}
					</td>
				</tr>
				<tr>
					<td class="left">真实姓名</td>
					<td>
						<input type="text" id="userName" @focus="infoName" @blur="checkName" v-model="userName">
					</td>
					<td class="msg" :class="textColor4">
						<img v-if="img==11" src="../assets/hui.jpg" alt="">
    					<img v-else-if="img==12" src="../assets/hongtan.jpg">
    					<img v-else >
						{{userNameMsg}}
					</td>
				</tr>
				<tr>
					<td class="left">性别</td>
					<td class="xb">
						<input type="radio" name="sex" value="0" checked/>男士
						<input type="radio" name="sex" value="1" />女士
					</td>
				</tr>
				<tr>
					<td class="left">生日</td>
					<td>
						<input type="date" id="birthday" >
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="checkbox" @click="read">
						<span class="xieyi">我已阅读并同意<a href="#">会员注册协议</a></span>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button :class="show" @click="submit">立即注册</button>
					</td>
				</tr>
			</table>
		</div>
    </div>
</template>
<style scoped>
	#zhuce{
		width: 100%;
		height: 128px;
		border-bottom: 2px solid #FD5723;
	}
	#zhuce .p1{
		color:#585858 ;
		font-size: 24px;
		font-family: "microsoft yahei";
		position: absolute;
		left:33.3%;
		top:30px;
		border-left: 1px solid #E5E5E5;
	    padding-left: 25px;
	}
	#zhuce .p2{
		position: relative;
		left:1350px;
		top: 80px;
		color: #707070;
		font-size: 16px;
	}
	#zhuce .p2>a{
		text-decoration: none;
		color: #FE5722;
	}
	#reg{
		background-color:#FBFBFB;
		height:840px;
		padding-left:100px ;
		padding-top:45px ;
	}
	#tab{
		width: 880px;
		/* height: 524px; */
		margin:0 auto;
		padding: 40px;
		padding-left: 100px;
    	/* overflow: hidden; */
    	box-shadow: 0 3px 30px rgba(251, 172, 143, 0.25);
		background-color: #fff;	
		color: #DCDCDC;	
	}
	#tab .msg{
		padding-left:5px ;
		font-size: 12px;
	}
	#tab>tr>td{
		padding: 10px;
	}
	.left{
		text-align: right;
		color: #A4A4A4;
		padding-right:15px ;
	}
	#tab .xb{
		color: #000;
		font-size: 12px;
	}
	#tab .xieyi{
		font-size: 12px;
		color:#666;
	}
	#tab .xieyi>a{
		text-decoration: none;
		color: #FE5722;

	}
	#phone,#pwd,#cpwd,#userName,#bir{
		width:270px;
		height:40px;
		color: #A4A4A4;
	}
	#tab>tr>td>button{
		width: 270px;
		height: 40px;
		background-color: #FE5722;
		border: 0;
		color:#fff;
		font-size: 18px;
		text-align: center;
		margin-top: 20px;
	}
	
	#app td+td{
		width: 282px;
	}
	.btnh{display:none;}
	.btns{display:block;}
	.colorRed{
		color:red;
	}
	.colorBlue{
		color:#2B8FF1;
	}
	.colorGrey{
		color:#a4a4a4;
	}
	
</style>
<script>
export default { 
	data(){
		return{
			show:"btnh",
			phone:"",
			phoneMsg:"",
			textColor:"",
			img:"",
			pwd:"",
			pwdMsg:"",
			textColor2:"",
			cpwd:"",
			cpwdMsg:"",
			textColor3:"",
			userName:"",
			userNameMsg:"",
			textColor4:""
		}
	},
	methods:{
		read(){
			if(this.show=="btnh"){
				this.show="btns";
			}else{
				this.show="btnh";
			}
		},
		info(){
			this.img="1";
			this.phoneMsg=`6-50位字符组成`;
			this.textColor="colorGrey";
		},
		checkphone(){
			var checkphoneRegExp=/^1[3-9]\d{9}$/;
			if(!checkphoneRegExp.test(this.phone)){
				this.img="2";
				this.phoneMsg="用户只能用手机注册";
				this.textColor="colorRed";
			}else{
				this.img="3";
				this.phoneMsg="账号可用";
				this.textColor="colorBlue";
			}
		},
		infopwd(){
			this.img="4";
			this.pwdMsg="6-20位字符，可由英文、数字及标点符号组成";
			this.textColor2="colorGrey";
		},
		checkpwd(){
			var pwdRegExp=/^\w{6,20}$/;
			if(!pwdRegExp.test(this.pwd)){
				this.img="5";
				this.pwdMsg="密码长度只能在6-20位字符之间";
				this.textColor2="colorRed";
			}else{
				this.img="6";
				this.pwdMsg="密码可用";
				this.textColor2="colorBlue";
			}
		},
		infocpwd(){
			this.img="7";
			this.cpwdMsg="请再输入一次密码";
			this.textColor3="colorGrey";
		},
		checkcpwd(){
			var cpwdRegExp=/^\w{6,20}$/;
			if(!cpwdRegExp.test(this.cpwd)){
				this.img="8";
				this.cpwdMsg="密码长度只能在6-20位字符之间";
				this.textColor3="colorRed";
			}else if(this.cpwd==this.pwd){
				this.img="9";
				this.cpwdMsg="密码输入正确";
				this.textColor3="colorBlue";
			}else{
				this.img="10";
				this.checkcpwd="两次输入密码不一致";
				this.textColor3="colorRed";
			}
		},
		infoName(){
			this.img="11";
			this.userNameMsg="2-20位字符,可由中文或英文组成";
			this.textColor4="colorGrey";
		},
		checkName(){
			var nameRegExp=/^[\u4e00-\u9fa5A-Za-z]{2,20}$/;
			if(!nameRegExp.test(this.userName)){
				this.img="12";
				this.userNameMsg="真实姓名长度只能在2-20位字符之间";
				this.textColor4="colorRed";
			}else{
				this.img="";
				this.userNameMsg="";
				this.textColor4="";
			}
		},
		submit(){
			this.axios.post("/user/register","phone="+this.phone+"&password="+this.pwd+"&userName="+this.userName+"&sex="+this.sex).then(res=>{
				if(res.data.code==1){
					setTimeout(()=>{
						this.$router.push("/");
					},2000)
					
				}else{
					this.phoneMsg="该手机号已注册！"
				}
			}
			)
		}
	},                                                                                                                                                                                                                                                                                                                                  
}
</script>






















