package com.shk.baseframe.demo.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * 使用JQGrid分页时用到的对象
 */
public class PageJQGrid {


    /**
     * 当前页是第几页
     */
    private int page = 1;

    /**
     * 总页数
     */
    private int total = 3;

    /**
     * 总记录数
     */
    private int records = 30;

    /**
     * 每页显示的条数
     */
    private int rows = 10;


    /**
     * 记录集
     */
    private List dataRows = new ArrayList();


    /**
     * 搜索
     */
    private boolean _search;

    /**
     * 时间戳
     */
    private long nd;


    private String sidx;


    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getRecords() {
        return records;
    }

    public void setRecords(int records) {
        this.records = records;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public List getDataRows() {
        return dataRows;
    }

    public void setDataRows(List dataRows) {
        this.dataRows = dataRows;
    }

    public boolean is_search() {
        return _search;
    }

    public void set_search(boolean _search) {
        this._search = _search;
    }

    public long getNd() {
        return nd;
    }

    public void setNd(long nd) {
        this.nd = nd;
    }

    public String getSidx() {
        return sidx;
    }

    public void setSidx(String sidx) {
        this.sidx = sidx;
    }
}

