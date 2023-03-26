package com.human.gateway.client.service.base;

import java.util.List;

import com.human.gateway.client.bean.Response;
import com.human.gateway.client.exception.ClientHumanException;

public interface IMultipleBaseService extends IBaseService {
	
	public List<Response> query(String[] ids) throws ClientHumanException;
	
}