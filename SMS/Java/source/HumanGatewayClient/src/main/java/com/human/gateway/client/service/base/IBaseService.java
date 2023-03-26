package com.human.gateway.client.service.base;

import java.util.List;

import com.human.gateway.client.bean.Message;
import com.human.gateway.client.bean.Response;
import com.human.gateway.client.exception.ClientHumanException;

public interface IBaseService {
	
	public List<Response> send(Message message) throws ClientHumanException;
	
}