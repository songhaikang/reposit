package com.shk.baseframe.demo.demo.controller;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-9
 * Time: 上午9:46
 * To change this template use File | Settings | File Templates.
 */
public class PageJQGrid {

//    private boolean _search;
//
//    private long nd;
//
//    private int rows;
//
//    private int page;
//
//    private int sidx;

    /**
     * 当前页时第几页
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

    private int rowNum=10;

    private int rows = 10;


    /**
     * 记录集
     */
    private List dataRows = new ArrayList();


    public List getDataRows() {
        return dataRows;
    }

    public void setDataRows(List dataRows) {
        this.dataRows = dataRows;
    }

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

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public int getRecords() {
        return records;
    }

    public void setRecords(int records) {
        this.records = records;
    }

    public int getRowNum() {
        return rowNum;
    }

    public void setRowNum(int rowNum) {
        this.rowNum = rowNum;
    }
}
