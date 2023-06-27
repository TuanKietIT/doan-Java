package DoAn.Service;

import org.springframework.stereotype.Service;
import DoAnMVC.Dto.PaginateDto;


@Service
public class Paginate {
	public PaginateDto GetInfo(int currentPage,int limit,int totalData) {
    	PaginateDto pd = new PaginateDto();
    	pd.setLimit(limit);
    	pd.setTotalPage(setInfortotalPage(totalData,limit));
    	pd.setCurrentPage(CheckCurrent(currentPage,pd.getTotalPage()));
    	
    	int start = FindStart(pd.getCurrentPage(),limit);
    	pd.setStart(start);
    	int end =  FindEnd(pd.getStart(),limit,totalData);
    	pd.setEnd(end);
    	return pd;
    }

	private int FindEnd(int start, int limit, int totalData) {
		// TODO Auto-generated method stub
		return start + limit > totalData ? totalData : (start + limit) - 1;
	}

	private int FindStart(int currentPage, int limit) {
		return ((currentPage - 1 ) * limit)+ 1;
	}

	private int setInfortotalPage(int totalData, int limit) {
		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}
	public int CheckCurrent(int currentPage,int totalPage) {
		if(currentPage < 1) {
			return 1;
		}
		if(currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}

	
}
