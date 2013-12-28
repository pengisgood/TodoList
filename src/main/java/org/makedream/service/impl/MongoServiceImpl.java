package org.makedream.service.impl;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.makedream.service.MongoService;
import org.springframework.stereotype.Service;
import org.springframework.web.util.UriUtils;

import java.io.IOException;
import java.net.URI;

@Service
public class MongoServiceImpl implements MongoService {
    private final static String BASE_URL = "https://api.mongolab.com/api/1/databases/";
    private final static String DB_NAME = "todolistdb";
    private final static String API_KEY = "7lOuCyzkW57WlJLk9Zsu0VFCNpDi_1-J";

    @Override
    public String find(String key) {
        CloseableHttpClient httpClient = HttpClients.createDefault();

        String url = BASE_URL + DB_NAME + "/collections/todos?apiKey=" + API_KEY + "&fo=true&q={\"email\":\"" + key + "\"}&f={\"todos\": 1, " +
                "\"_id\": 0}";
        try {
            String encodeUrl = UriUtils.encodeQuery(url, "UTF-8");
            URI uri = new URI(encodeUrl);
            HttpGet httpGet = new HttpGet(uri);
            ResponseHandler<String> responseHandler = new ResponseHandler<String>() {
                @Override
                public String handleResponse(HttpResponse response) throws IOException {
                    int statusCode = response.getStatusLine().getStatusCode();
                    if (statusCode >= 200 && statusCode < 300) {
                        HttpEntity entity = response.getEntity();
                        return entity != null ? EntityUtils.toString(entity) : null;
                    } else {
                        throw new ClientProtocolException("Unexpected response status: " + statusCode);
                    }
                }
            };

            return httpClient.execute(httpGet, responseHandler);
        } catch (Exception e) {
            //
        } finally {
            try {
                httpClient.close();
            } catch (IOException e) {
                System.out.println("Cannot close http client!");
            }
        }
        return "";
    }

    @Override
    public void insert(String email, String todos) {

    }

    @Override
    public void update(String email, String todos) {

    }


}
