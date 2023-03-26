package com.human.gateway.client.util;
import static org.junit.Assert.assertEquals;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.junit.Test;

import com.human.gateway.client.util.HttpClientHelper;

public class HttpClienteHelperTest {

	@Test
	public void shouldMakeRequestToGoogleHttps() {
		String url = "http://www.google.com/search?q=httpClient";
		HttpClientHelper httpClientHelper = new HttpClientHelper(url);
		HttpClient client = httpClientHelper.getHttpClient();
		HttpGet request = new HttpGet(url);
		
		try {
			HttpResponse response = client.execute(request);
			assertEquals(200, response.getStatusLine().getStatusCode());
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}