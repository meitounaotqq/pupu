import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Register from '../views/Register.vue'
import Login from '../views/Login.vue'
import Product237 from '../views/Product237.vue'
import Search from '../views/Search.vue'
import Topics from '../views/Topics.vue'
import Plum from '../views/Plum.vue'
import Lianshi from '../views/Lianshi.vue'
import Wenchuang from '../views/Wenchuang.vue'


Vue.use(VueRouter)

const routes = [
  {
    path:'/wenchuang',
    component:Wenchuang
  },
  {
    path:'/lianshi',
    component:Lianshi
  },
  {
    path:'/plum',
    component:Plum
  },
  {
    path:'/topics',
    component:Topics
  },
  {
    path:'/search',
    component:Search
  },
  {
    path:'/product237',
    component:Product237
  },
  {
    path:'/login',
    component:Login
  },
  {
    path:'/register',
    component:Register
  },
  {
    path: '/',
    name: 'home',
    component: Home
  },
  { //这里是懒加载
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  base: process.env.BASE_URL,
  mode:'history',
  routes
})

export default router
