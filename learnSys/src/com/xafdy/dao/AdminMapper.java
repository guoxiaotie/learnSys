package com.xafdy.dao;

import java.util.Map;

import com.xafdy.model.Admin;

public interface AdminMapper {
	Admin searchEntityByAccount(Map<String, String> map);
}