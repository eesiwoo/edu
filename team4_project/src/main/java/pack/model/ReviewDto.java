package pack.model;

import java.util.Calendar;

import org.springframework.stereotype.Component;

@Component
public class ReviewDto {
	private int review_id, goods_id, review_viewCount, review_asc, review_answer,  likes_count, review_isPrivate;
	private String user_id, review_title, review_content;
	private float review_star;
	private String review_date, review_img, review_orQna;
	
	public String getReview_orQna() {
		return review_orQna;
	}
	
	public void setReview_orQna(String review_orQna) {
		this.review_orQna = review_orQna;
	}
	
	
	public void setReview_img(String review_img) {
		this.review_img = review_img;
	}
	
	public String getReview_img() {
		return review_img;
	}
	
	public int getLikes_count() {
		return likes_count;
	}
	
	public void setLikes_count(int likes_count) {
		this.likes_count = likes_count;
	}
	
	public String getReview_date() {
		return review_date.substring(0, 10);
	}
	
	public void setReview_date() {
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) +1;
		int day = cal.get(Calendar.DATE);
		this.review_date = year + "-" + month + "-" + day;
	}
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getReview_viewCount() {
		return review_viewCount;
	}
	public void setReview_viewCount(int review_viewCount) {
		this.review_viewCount = review_viewCount;
	}
	public int getReview_asc() {
		return review_asc;
	}
	public void setReview_asc(int review_asc) {
		this.review_asc = review_asc;
	}
	public int getReview_answer() {
		return review_answer;
	}
	public void setReview_answer(int review_answer) {
		this.review_answer = review_answer;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public float getReview_star() {
		return review_star;
	}
	public void setReview_star(float review_star) {
		this.review_star = review_star;
	}
	public int getReview_isPrivate() {
		return review_isPrivate;
	}
	public void setReview_isPrivate(int review_isPrivate) {
		this.review_isPrivate = review_isPrivate;
	}
	
	
}
