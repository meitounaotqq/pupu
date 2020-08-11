const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由器对象
const router=express.Router();

router.get('/list',(req,res)=>{
    let category=req.query.category;
    console.log(category);
    let sql="SELECT title,price,img,category FROM product WHERE category=?";
    pool.query(sql,[category],(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});

// 关键字查询
router.get('/search',(req,res)=>{
    let title=req.query.title;
    let sql='SELECT * FROM product WHERE title LIKE "%"+?+"%"';
    pool.query(sql,[title],(err,result)=>{
      if(err) throw err;
      console.log(result);
      if(result.length>0){
        res.send({message:'查询到结果',code:1});
      }else{
        res.send({message:'查询失败',code:0});
      }
    })
  });

module.exports=router;