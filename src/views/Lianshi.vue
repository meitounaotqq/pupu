<template>
  <div>
    <my-product></my-product>
    <my-show></my-show>
    <my-right></my-right>

    <div id="search">
      <!-- 左边组件 -->

      <my-search_left></my-search_left>

      <div id="top">
        <!-- top组件 -->
        <my-search_top></my-search_top>
        <!-- 分类加载 -->
        <div id="fenlei">
          <ul>
            <li v-for="(v, k) of img" :key="k">
              <img :src="v.img" alt="" />
              <br />
              <a href="#">{{ v.title }}</a>
              <p>￥{{ v.price.toFixed(2) }}</p>
            </li>
          </ul>
          
          
        </div>
      </div>
    </div>

    <my-footer></my-footer>
  </div>
</template>

<style scoped>
#search {
  display: flex;
  width: 1200px;
  margin: 0 auto;
}
#top {
  margin-top: 10px;
}

#fenlei {
  line-height: 1.8;
  font-family: microsoft yahei;
  width: 980px;
  float: right;
}
#fenlei > ul {
  display: flex;
  flex-wrap: wrap;
}
#fenlei > ul > li {
  width: 220px;
  overflow: hidden;
  padding: 12px;
}
#fenlei > ul > li > a {
  display: inline-block;
  width: 220px;
  height: 20px;
  text-decoration: none;
  color: #686868;
  text-overflow: ellipsis;
}

#fenlei > ul > li > a:hover {
  color: #ff5622;
}
#fenlei > ul > li > img {
  width: 100%;
  border: 1px solid #eeeeee;
}
#fenlei > ul > li p {
  color: #ff2d2e;
  padding-right: 10px;
  font-size: 14px;
  margin-bottom: 10px;
}
</style>

<script>
export default {
  data() {
    return {
      img: []
    };
  },
  methods: {
    getData() {
      this.axios.get("/product/list?category=10").then((res) => {
        var data = res.data;
        console.log(data);
        data.forEach((element) => {
          if (element.img) {
            element.img = require("../assets/home/lianshi/" + element.img);
          }
          this.img.push(element);
        });
      });
    }
  },
  mounted() {
    this.getData()
  },
};
</script>