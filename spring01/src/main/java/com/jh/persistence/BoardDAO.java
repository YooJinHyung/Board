package com.jh.persistence;

import java.util.List;

import com.jh.domain.BoardVO;
import com.jh.domain.Criteria;
public interface BoardDAO {
	
	public void create(BoardVO vo)throws Exception;

	public void update(BoardVO vo)throws Exception;
	
	public BoardVO read(Integer bno)throws Exception;
	
	public void delete(Integer bno)throws Exception;
	
	public List<BoardVO> listAll()throws Exception;
	
	public List<BoardVO> listPage(int page)throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
}
