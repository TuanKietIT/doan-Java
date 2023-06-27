package DoAn.Service;

import org.springframework.stereotype.Service;

import DoAnMVC.Dto.PaginateDto;

@Service
public interface PaginateService {
    public PaginateDto GetInfo(int currentPage,int limit,int totalData) ;
}
