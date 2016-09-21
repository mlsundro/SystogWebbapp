package minpakke;

class Kunde {
    private String kundeId;
    private String name;
    
    public Kunde(String kundeId, String name){
        this.kundeId = kundeId;
        this.name = name;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getId() {
        return kundeId;
    }
    public void setId(String kundeId) {
        this.kundeId = kundeId;
    } 
}
