package com.shk.baseframe.demo.demo.controller;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-9
 * Time: 上午10:32
 * To change this template use File | Settings | File Templates.
 */
public class ProjectInfo {

    private String projectId;

    private String projectName;
    private String projectCode;
    private boolean useAble;
    private String note;


    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectCode() {
        return projectCode;
    }

    public void setProjectCode(String projectCode) {
        this.projectCode = projectCode;
    }

    public boolean isUseAble() {
        return useAble;
    }

    public void setUseAble(boolean useAble) {
        this.useAble = useAble;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
