package com.unresyst;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.List;
import java.io.IOException;

import org.apache.commons.cli2.OptionException; 
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.recommender.CachingRecommender;
import org.apache.mahout.cf.taste.impl.recommender.slopeone.SlopeOneRecommender;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;

public class UnresystBoolRecommend {
    
    public static void main(String... args) throws FileNotFoundException, TasteException, IOException, OptionException {
        
    	PrintWriter writer = new PrintWriter("datasets/results.json", "UTF-8");
    	
        // create data source (model) - from the csv file            
        File ratingsFile = new File("datasets/crime-data.csv");                        
        DataModel model = new FileDataModel(ratingsFile);
        
        // create a simple recommender on our data
        CachingRecommender cachingRecommender = new CachingRecommender(new SlopeOneRecommender(model));
        writer.print("[ ");            	
        // for all hours
        for (LongPrimitiveIterator it = model.getUserIDs(); it.hasNext();){

            long hour = it.nextLong();
            
            // get the predicted crime types for each hour
            List<RecommendedItem> recommendations = cachingRecommender.recommend(hour, 10);
            
            // if empty write something
            if (recommendations.size() == 0){
                writer.print("{");            	                
                writer.print("\"id\"");
                writer.print(":");
                writer.print("\"");                                
                writer.print(hour);
                writer.print(", ");                
                writer.print("\"title\"");
                writer.print(":");                
                writer.print("\"");                
                writer.print("\"none\"");                
            	if( !it.hasNext() )
                    writer.print("} ");          
            	else
                    writer.print("}, ");            	                		
            }
                            
            // print the list of recommendations for each
            // Recommendation conversion list - crime types represented by integers
            /*  1 - auto_theft
				2 - assault
				3 - burglary
				4 - dui
				5 - forgery
				6 - fraud
				7 - homicide
				8 - possession
				9 - property_damage
				10 - shoplfting
				11 - theft
				12 - trespassing
				13 - weapons_violation
             */
            for (RecommendedItem crimeId : recommendations) {
                writer.print("{");            	                
                writer.print("\"id\"");
                writer.print(":");
                writer.print("\"");                                
                writer.print(hour);
                writer.print(", ");                
                writer.print("\"title\"");
                writer.print(":");                
                writer.print("\"");                
                writer.print(crimeId.getItemID());
                writer.print("\"");           

            	if( !it.hasNext() )
                    writer.print("} ");          
            	else
                    writer.print("}, ");            	                		
            }
        }    
        writer.print("]");
        writer.close();

        }
}