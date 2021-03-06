package com.lagou.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

//@Controller
@RestController   //组合主键：组合@Controller + @ResponseBody
@RequestMapping("/restful")
public class RestfulController {


    /*
        根据id进行查询
        localhost:8080/项目名/restful/user/2 + get请求方式  404  findById:2
     */
    @GetMapping("/user/{id}")//@RequestMapping(value = "/user/{id}",method = RequestMethod.GET)
    //@ResponseBody
    public String findById(@PathVariable Integer id){
        return "findById:"+id;
    }

    /*
        新增方法
     */
    @PostMapping("/user")
    public String post(){
        return "post";
    }

    /*
        更新方法
     */
    @PutMapping("/user")
    public String put(){
        return "put";
    }

    /*
       删除方法
    */
    @DeleteMapping("/user/{id}")
    public String delete(@PathVariable Integer id){
        return "delete"+id;
    }


}


