package com.shk.baseframe.tools.config;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

/**
 * 文件操作
 */
public class ConfigFileUtils {

    /**
     * 列出该路径下所有文件及目录，包括子目录的文件
     *
     * @param path
     * @return
     */
    public static Hashtable<String, List<String>> filesMap = new Hashtable<String, List<String>>();

    /**
     * 初始化文件列表
     *
     * @param path
     */
    public static void initFilesMap(String path) {
        List<String> fileList = new ArrayList<String>();
        List<String> forderList = new ArrayList<String>();
        filesMap.put(ConfigContext.FILE_LIST_KEY, fileList);
        filesMap.put(ConfigContext.FORDER_LIST_KEY, forderList);
        getFileList(path);
    }

    private static void getFileList(String path) {
        File sourceFolder = new File(path);
        String[] files = sourceFolder.list();
        File temp = null;
        if (files != null) {
            for (String filePath : files) {
                if (path.endsWith(File.separator)) {
                    temp = new File(path + filePath);
                } else {
                    temp = new File(path + File.separator + filePath);
                }
                String tempPath = temp.getAbsolutePath();
                if (temp.isFile()) {
                    filesMap.get(ConfigContext.FILE_LIST_KEY).add(tempPath);
                } else {
                    filesMap.get(ConfigContext.FORDER_LIST_KEY).add(tempPath);
                    getFileList(tempPath);
                }
            }
        }
    }

    /**
     * 替换文件内容
     */
    public static void replaceContent() {
        List<String> fileList = filesMap.get(ConfigContext.FILE_LIST_KEY);
        for (String path : fileList) {
            File temp = new File(path);
            if (temp.exists()) {
                String content = readFile(path);
                String newContent = replaceContent(content);
                if (content != newContent) {
                    writeFile(path, newContent);
                    System.out.println("内容被修改的文件：" + path);
                }
            }
        }
    }

    private static String readFile(String filePath) {
        File file = new File(filePath);
        if (!file.exists()) {
            return null;
        }
        StringBuffer sb = new StringBuffer();
        InputStreamReader in = null;
        BufferedReader br = null;
        try {
            in = new InputStreamReader(new FileInputStream(file), "UTF-8");
            br = new BufferedReader(in);
            String line = br.readLine();
            while (line != null) {
                sb.append(line);
                sb.append("\n");
                line = br.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (in != null) {
                    in.close();
                }
                if (br != null) {
                    br.close();
                }
            } catch (Exception e) {
            }
        }
        return sb.toString();
    }

    private static boolean writeFile(String filePath, String content) {
        boolean result = false;
        BufferedWriter out = null;
        try {
            out = new BufferedWriter(new FileWriter(filePath));
            out.write(content);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.flush();
                    out.close();
                }
            } catch (Exception e) {
            }
        }
        return result;
    }

    /**
     * 修改文件名称
     */
    public static void renameFile() {
        List<String> fileList = filesMap.get(ConfigContext.FILE_LIST_KEY);
        for (String path : fileList) {
            File temp = new File(path);
            if (temp.exists()) {
                String fileName = temp.getName();
                String newFileName = replaceContent(fileName);
                if (fileName != newFileName) {
                    File newFile = new File(temp.getParent() + File.separator + newFileName);
                    temp.renameTo(newFile);
                    System.out.println("将目录名称[" + temp.getAbsolutePath() + "]修改为[" + newFile.getAbsolutePath() + "]");
                }
            }
        }
    }

    /**
     * 修改目录名称
     */
    public static void renameForder(String path) {
        File sourceFolder = new File(path);
        String[] files = sourceFolder.list();
        File temp = null;
        for (String filePath : files) {
            if (path.endsWith(File.separator)) {
                temp = new File(path + filePath);
            } else {
                temp = new File(path + File.separator + filePath);
            }
            String tempPath = temp.getAbsolutePath();
            if (temp.isDirectory()) {
                renameForder(tempPath);
                String forderName = temp.getName();
                String newForderName = replaceContent(forderName);
                File newForder = new File(temp.getParent() + File.separator + newForderName);
                temp.renameTo(newForder);
                System.out.println("将目录名称[" + temp.getAbsolutePath() + "]修改为[" + newForder.getAbsolutePath() + "]");

            }
        }
    }

    private static String replaceContent(String content) {
        String newContent = content.replace(ConfigContext.RENAME_BY_COMPANY, ConfigContext.RENAME_TO_COMPANY);
        newContent = newContent.replace(ConfigContext.RENAME_BY_APP1, ConfigContext.RENAME_TO_APP1);
        newContent = newContent.replace(ConfigContext.RENAME_BY_APP2, ConfigContext.RENAME_TO_APP2);
        return newContent;
    }

    /**
     * 清理指定文件
     */
    public static void cleanFile() {
        List<String> fileList = filesMap.get(ConfigContext.FILE_LIST_KEY);
        for (String path : fileList) {
            File temp = new File(path);
            String fileName = temp.getName();
            boolean delete = false;
            if (fileName.startsWith(ConfigContext.DEL_POINT)) {
                delete = true;
            }
            if (fileName.endsWith(ConfigContext.DEL_END_WITH_IML)) {
                delete = true;
            }

            if (fileName.equalsIgnoreCase(ConfigContext.DEL_IGNORED_GITIGNORE)) {
                delete = false;
            }
            if (delete) {
                temp.delete();
                System.out.println("删除文件：" + path);
            }

        }

    }

    /**
     * 清理指定文件夹
     */
    public static void cleanFolder() {
        List<String> forderList = filesMap.get(ConfigContext.FORDER_LIST_KEY);
        for (String path : forderList) {
            boolean delete = false;
            File temp = new File(path);
            String forderName = temp.getName();
            if (forderName.equalsIgnoreCase(ConfigContext.DEL_FORDER_TARGET)) {// 清理掉target目录及其子目录下的文件
                delete = true;
            } else if (forderName.equalsIgnoreCase(ConfigContext.DEL_FORDER_IDEA)) {// 清理掉.idea目录及其子目录下的文件
                delete = true;
            } else if (forderName.endsWith(ConfigContext.DEL_FORDER_BASEFRAME_DEMO)) {//删除demo项目
                delete = true;
            }

            if (delete) {
                deleteForder(temp);
            }
        }
    }

    private static void deleteForder(File path) {// 删除目录及其子目录
        if (!path.exists())
            return;
        if (path.isFile()) {
            path.delete();
            System.out.println("删除目录下的文件：" + path);
            return;
        }
        File[] files = path.listFiles();
        for (int i = 0; i < files.length; i++) {
            deleteForder(files[i]);
        }
        path.delete();
        System.out.println("删除目录：" + path);
    }

}
