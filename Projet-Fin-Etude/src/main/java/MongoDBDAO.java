
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.util.ArrayList;
import java.util.List;
import static jdk.internal.org.jline.utils.AttributedStringBuilder.append;


import org.bson.Document;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author PC
 */
public class MongoDBDAO {
    private MongoClient mongoClient;
    private MongoDatabase database;
    private MongoCollection<Document> collection;
    
    public MongoDBDAO() {
        mongoClient = MongoClients.create("mongodb://localhost:27017");
        database = mongoClient.getDatabase("mydatabase");
        collection = database.getCollection("Utilisateur");
        
     }
    
     public void saveUser(Utilisateur user) {
        Document document = new Document("nom", user.getNom())
               .append("prenom", user.getPrenom())
               .append("date_naissance", user.getDateNaissance())
               .append("telephone", user.getTelephone());
        collection.insertOne(document);
    }

   public List<Utilisateur> getUsers() {
        List<Utilisateur> users = new ArrayList<>();
        for (Document document : collection.find()) {
            Utilisateur user = new Utilisateur (document.getString("nom"), document.getString("prenom"),document.getString("date_naissance"),document.getString("telephone"));
            users.add(user);
        }
        return users;
    }
}
    
    

