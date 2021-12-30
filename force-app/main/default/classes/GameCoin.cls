public abstract class GameCoin {

    public abstract Integer coinValue();
    
    public Integer absorbCoin(Integer existingCoins){
        return existingCoins + coinValue();
    }
}