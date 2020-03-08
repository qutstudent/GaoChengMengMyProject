package com.qst.crm.po;
import java.util.ArrayList;
import java.util.List;
	public class PageBean<T> {
		// 每页显示记录数
		private int pageSize = 10;
		// 当前页码
		private int pageNo = 1;
		// 每页数据记录集合
		private List<T> pageData = new ArrayList<T>();
		// 总记录数
		private int recordCount;
		// 总页数
	    private int totalPages;
		// 是否有下一页
		private boolean hasNextPage;
		// 是否有上一页
		private boolean hasPreviousPage;		
		public int getPageSize() {
			return pageSize;
		}
		public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
		}
		public int getPageNo() {
			return pageNo;
		}
		public void setPageNo(int pageNo) {
			this.pageNo = pageNo;
		}
		public int getRecordCount() {
			return recordCount;
		}
		public void setRecordCount(int recordCount) {
			this.recordCount = recordCount;
		}
		public void setTotalPages(int totalPages) {
			this.totalPages = totalPages;
		}
		
       
		public PageBean(int pageSize, int pageNo) {
			this.pageSize = pageSize;
			this.pageNo = pageNo;
		}
		public int getTotalPages() {
			return (recordCount + pageSize - 1) / pageSize;
		}
		public List<T> getPageData() {
			return pageData;
		}
		public void setPageData(List<T> pageData) {
			this.pageData = pageData;
		}
		public boolean isHasNextPage() {
			return (this.getPageNo() < this.getTotalPages());
		}
		public void setHasNextPage(boolean hasNextPage) {
			this.hasNextPage = hasNextPage;
		}
		public boolean isHasPreviousPage() {
			return (this.getPageNo() > 1);
		}
		public void setHasPreviousPage(boolean hasPreviousPage) {
			this.hasPreviousPage = hasPreviousPage;
		}
		public PageBean() {
		}
		
	}


