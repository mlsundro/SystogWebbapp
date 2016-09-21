package minpakke;

import java.util.*;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/kunder/")

public class KundeService {
	private static Map<String,Kunde> kunder = new HashMap<>();

    @GET
    @Path("/{kundeId}")
    @Produces(MediaType.APPLICATION_JSON)
    public Kunde getKunde(@PathParam("kundeId") String kundeId) {
        return kunder.get(kundeId);
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Collection<Kunde> getKunder() {
        return kunder.values();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public void addKunde(Kunde kunde) {
        kunder.put(kunde.getId(), kunde);
    }
    
    @DELETE
    @Path("/{kundeId}")
    public void deleteKunde(@PathParam("kundeId") String kundeId){
        kunder.remove(kundeId);
    }
}
