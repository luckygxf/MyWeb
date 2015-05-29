package com.gxf.beans;

import java.util.Set;

/**
 * 资源类型
 * @author Administrator
 *
 */
public class ResourceType {
	private int id;
	private String name;
	private Set<Resource> resources;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Resource> getResources() {
		return resources;
	}
	public void setResources(Set<Resource> resources) {
		this.resources = resources;
	}
	
	
}
