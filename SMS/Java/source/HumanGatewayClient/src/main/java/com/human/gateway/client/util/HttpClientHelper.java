package com.human.gateway.client.util;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.List;
import java.util.Properties;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.impl.client.HttpClients;

import com.human.gateway.client.bean.Response;
import com.human.gateway.client.bean.SimpleMessage;
import com.human.gateway.client.exception.ClientHumanException;

public class HttpClientHelper {
	
	private static final String PROTOCOL = "TLSv1.2";
	
	private HttpClient httpClient;
	
	private String url;

	public HttpClientHelper(String url) {
		this.url = url;
		this.httpClient = buildHttpClient();
	}
	
	public List<Response> multipleRequest(HttpEntity entity) throws ClientHumanException {
		InputStream stream = request(entity);
		return ResponseParser.getResponses(stream);
	}
	
	public List<Response> simpleRequest(List<NameValuePair> urlParameters) throws ClientHumanException {
		InputStream stream = request(urlParameters);
		return ResponseParser.getResponses(stream);
	}
	
	public List<SimpleMessage> requestAndGetMessages(List<NameValuePair> urlParameters) throws ClientHumanException {
		InputStream stream = request(urlParameters);
		List<SimpleMessage> messages = ResponseParser.getMessages(stream);
		return messages;
	}
	
	private InputStream request(HttpEntity entity) throws ClientHumanException {
		HttpPost post = new HttpPost(url);
		try {
			post.setEntity(entity);
			HttpResponse response = getHttpClient().execute(post);
			StatusLine statusResponse = response.getStatusLine(); 
			if (HttpStatus.SC_OK == statusResponse.getStatusCode()) {
				return response.getEntity().getContent();
			}
			throw new ClientHumanException(statusResponse.getReasonPhrase());
		} catch (Exception e) {
			throw new ClientHumanException(e);
		} finally {
			post.releaseConnection();
		}
	}

	private InputStream request(List<NameValuePair> httpPostParameters) throws ClientHumanException {
		HttpPost post = new HttpPost(url);
		try {
			post.setEntity(new UrlEncodedFormEntity(httpPostParameters));
			HttpResponse response = getHttpClient().execute(post);
			StatusLine statusResponse = response.getStatusLine(); 
			if (HttpStatus.SC_OK == statusResponse.getStatusCode()) {
				return response.getEntity().getContent();
			}
			throw new ClientHumanException(statusResponse.getReasonPhrase());
		} catch (Exception e) {
			throw new ClientHumanException(e);
		} finally {
			post.releaseConnection();
		}
	}
	
	private HttpClient buildHttpClient() {
		try {
			return HttpClients.custom()
							  .setSSLContext(createSSLContext())
							  .setSSLHostnameVerifier(new NoopHostnameVerifier())
							  .build();
		} catch (ClientHumanException e) {
			return HttpClients.createDefault();
		}
	}

	private SSLContext createSSLContext() throws ClientHumanException {
		try {
			TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
			trustManagerFactory.init(getTrustStore());
			SSLContext sc = SSLContext.getInstance(PROTOCOL);
			sc.init(null, trustManagerFactory.getTrustManagers(), new java.security.SecureRandom());
			return sc;
		} catch (Exception e) {
			throw new ClientHumanException(e);
		}
		
	}
	
	private KeyStore getTrustStore() throws IOException, KeyStoreException, NoSuchAlgorithmException, CertificateException {
		KeyStore customTrustStore = KeyStore.getInstance(KeyStore.getDefaultType());

		InputStream customTrustStoreFile = null;
		try {
			Properties prop = getProperties();
			customTrustStoreFile = getClass().getClassLoader().getResourceAsStream(prop.getProperty("truststore.file"));
			customTrustStore.load(customTrustStoreFile, prop.getProperty("truststore.password").toCharArray());
		} finally {
			if (customTrustStoreFile != null) {
				customTrustStoreFile.close();
			}
		}

		return customTrustStore;
	}
	
	private Properties getProperties() throws IOException {
		Properties properties = new Properties();
		InputStream propertiesFileStream = null;
		try {
			propertiesFileStream = getClass().getClassLoader().getResourceAsStream("api-human.properties");
			properties.load(propertiesFileStream);
		} finally {
			if (propertiesFileStream != null) {
				propertiesFileStream.close();
			}
		}
		return properties;
	}
	
	public HttpClient getHttpClient() {
		return this.httpClient;
	}
	
}