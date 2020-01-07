package com.briup.smart.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.briup.smart.bean.SmartRole;
import com.briup.smart.bean.SmartUser;
import com.briup.smart.service.EnvironmentService;
import com.briup.smart.service.PermissionService;
import com.briup.smart.web.vm.Response;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;

@Api(tags="关于角色及其权限管理的Controller")
@RestController
public class PermissionController {
	@Autowired
	private PermissionService service;
	
	@ApiOperation(value="查找所有角色信息",notes="查找所有角色信息(角色描述，角色资源权限)")
	@GetMapping("/permission")
	public Response<List> getAllRole(){
		return Response.ok(service.findRoleById());
	}
	
	@ApiOperation(value="增加角色资源权限",notes="通过角色id增加角色未赋予的权限")
	@PostMapping("/addpermission")
	@ApiImplicitParams({
		@ApiImplicitParam(name="id",value="角色编号",required=true)
	})
	public Response<String> addPermissionById(int id,@RequestParam(value="资源编号") List<Integer> list){
		service.updatePermission(id,list);
		return Response.ok("success");
	}
	
	@ApiOperation(value="删除角色资源权限",notes="通过角色id删除角色已存在的权限")
	@PostMapping("/deletepermission")
	@ApiImplicitParams({
		@ApiImplicitParam(name="id",value="角色编号",required=true)
	})
	public Response<String> deletePermissionById(int id,@RequestParam(value="资源编号") List<Integer> list){
		service.deletePermission(id,list);
		return Response.ok("success");
	}
	
	
	
	
	
}
