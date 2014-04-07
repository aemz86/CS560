package com.ws;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.Reader;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;

import org.json.simple.JSONObject;



@Path("generic")
public class SolrWebService {
    @SuppressWarnings("unused")
    @Context
    private UriInfo context;

    /**
     * Default constructor. 
     */
    public SolrWebService() {
        // TODO Auto-generated constructor stub
    }


    @GET
    @Produces("application/x-javascript")
    @Path("queryId/{player}")
    public String queryId(@QueryParam("callback") String callback,@PathParam("player") String player){
        
    	  String line="";
      	
      	try
      	{

      	Process process = Runtime.getRuntime().exec ("curl http://134.193.136.127:8983/solr/collection1_shard1_replica1/select?q=id%3A"+player+"&wt=json");
      	InputStreamReader ir=new InputStreamReader(process.getInputStream());

      	LineNumberReader input = new LineNumberReader (ir);
      	
      	line = input.readLine();
      	System.out.println(line);


      	}
      	catch (java.io.IOException e){
         	 System.err.println ("IOException " + e.getMessage());
         	 return "IOException " + e.getMessage();
         	}
      	return line;   	
      	
    }
    
        
    /**
     * PUT method for updating or creating an instance of SolrWebService
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/json")
    public void putJson(String content) {
    }

}