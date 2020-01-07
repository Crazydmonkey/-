package com.briup.smart.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.briup.smart.bean.SmartUserMessages;
import com.briup.smart.common.utils.jwt.JwtTokenUtil;
import com.briup.smart.common.utils.jwt.Message;
import com.briup.smart.common.utils.jwt.MessageUtil;
import com.briup.smart.service.UserMessService;
import com.briup.smart.web.vm.Response;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;

@Api(tags="关于用户登录验证的Controller")
@RestController
public class LoginController {
	@Autowired
	private UserMessService userMessService;
	@ApiOperation(value="用户登录验证",notes="用户登录验证")
	@ApiImplicitParams({
		@ApiImplicitParam(name="nameorphone",value="用户名或手机号",required=true),
		@ApiImplicitParam(name="password",value="密码",required=true)
	})
	@PostMapping("/userlogin")
	/*public Response<SmartUserMessages> updateuserMess(String nameorphone,String password){
		SmartUserMessages user = userMessService.login(nameorphone,password);
		//session.setAttribute("user", user);
		return Response.ok(user);
	}*/
	public Message validateLogin(HttpSession session,String nameorphone,String password) {
		SmartUserMessages user = userMessService.login(nameorphone,password);
		 // 2. 如果登录成功产生token,将token缓存起来，返回
		String token = JwtTokenUtil.createJWT(user.getId(), user.getName());
		Map<String,String> map = new HashMap<>();
		map.put("token", token);
		return MessageUtil.success(map);
		
	}
	@ApiOperation(value = "通过token获取用户的基本信息")
	@GetMapping("info")
	public Message info(String token) {
		 // 1. 通过token获取用户信息  {id,use,gender,roles:[]}
		 long id = Long.parseLong(JwtTokenUtil.getUserId(token,JwtTokenUtil.base64Secret));
		 SmartUserMessages user = userMessService.selectById(id);
	     System.out.println("user+========================"+user);
	        //BaseUserExtend baseUserExtend = baseUserService.findById(id);
	     return MessageUtil.success(user);
	}
	@ApiOperation(value = "退出功能")
	@PostMapping("loginOut")
	public Message loginOut() {
		 // 1.退出， token从缓存中移除掉
		return MessageUtil.success("退出成功");
	}
	@ApiOperation(value = "记录登录次数")
	@GetMapping("/login_Count")
	public Response<SmartUserMessages> login_Count(long id){
		return Response.ok(userMessService.loginCount(id));
	}
	
}
