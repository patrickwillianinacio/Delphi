package com.human.gateway.client.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.human.gateway.client.bean.SimpleMessage;
import com.human.gateway.client.exception.ClientHumanException;
import com.human.gateway.client.service.base.BaseService;

public class QueryMessageService extends BaseService {

	private static final String DISPATCH_RECEIVED = "listReceived";
	
	public QueryMessageService(String account, String password) {
		super(account, password);
	}	
	
	public List<SimpleMessage> listReceivedSMS() throws ClientHumanException {
		validateAccountAndPassword();
		
		List<NameValuePair> httpPostParameters = new ArrayList<NameValuePair>();
		httpPostParameters.add(new BasicNameValuePair(PARAM_ACCOUNT, this.getAccount()));
		httpPostParameters.add(new BasicNameValuePair(PARAM_CODE, this.getPassword()));
		httpPostParameters.add(new BasicNameValuePair(PARAM_DISPATCH, DISPATCH_RECEIVED));
		
		return this.requestAndGetMessages(httpPostParameters);
	}	
	
}