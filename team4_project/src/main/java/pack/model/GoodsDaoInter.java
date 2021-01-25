package pack.model;

import java.util.List;

public interface GoodsDaoInter {

	// product를 클릭하게 되면 해당 상품을 가져오기 
	public GoodsDto getGoodsSearch(String goods_id);

	// index에 보여질 상품 무작위로 1개 가져오기 
	public GoodsDto getGoodsRandom1List();
	
	// productList에 보여질 상품 모두 가져오기  
	public List<GoodsDto> getGoodsList();
	
	// index에 보여질 상품 무작위로 4개 가져오기 
	public List<GoodsDto> getRandom4GoodsList();
	
	// right에 보여질(최근 본 상품) 상품 리스트 가져오기  
	public List<GoodsDto> getRecentGoodsList();
	
	// cartList에 보여질 상품 리스트 가져오기   
	public List<GoodsDto> getCartGoodsList();
	
	
}
