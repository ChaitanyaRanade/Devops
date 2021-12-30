public virtual class TV {
	public string color;
    public Decimal size;
    
    public TV(){
        system.debug('constructor');
    }
    
    public TV(String st){
        system.debug('constructor   '+st);
    }
    
    public virtual void sound(){
        system.debug('Basic Sound');
    }
    
    public virtual void sound(string st){
        system.debug('Basic Sound');
    }
    
}