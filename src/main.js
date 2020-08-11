import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import swiper from 'swiper'
import VueAwesomeSwiper from 'vue-awesome-swiper'
import ElementUi from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import Footer from './components/Footer.vue'
import Product from './components/Product.vue'



axios.defaults.baseURL="http://127.0.0.1:3000";
Vue.config.productionTip = false
Vue.prototype.axios=axios;
Vue.use(ElementUi);
Vue.component("my-footer",Footer);
Vue.component("my-product",Product);
new Vue({
  router,
  store,
  swiper,
  VueAwesomeSwiper,
  render: h => h(App)
}).$mount('#app')
