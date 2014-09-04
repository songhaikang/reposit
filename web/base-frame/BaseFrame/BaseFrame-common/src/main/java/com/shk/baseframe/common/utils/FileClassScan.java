package com.keqiaokeji.dborm.annotation;

import com.keqiaokeji.dborm.util.LogDborm;
import com.keqiaokeji.dborm.util.StringUtilsDborm;

import java.io.File;
import java.io.IOException;
import java.net.JarURLConnection;
import java.net.URL;
import java.util.*;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/**
 * Created by shk on 14-7-10.
 */
public class FileClassScan {

    static String CLASS = ".class";
    static Set<String> filePathList = new HashSet<String>();

    private static Set<String> scanSourcesFiles(File file) {
        if (file.exists()) {
            if (file.isFile() && file.getName().endsWith(CLASS)) {//只添加class文件
                filePathList.add(file.getAbsolutePath());
            } else {
                File[] files = file.listFiles();
                for (File fileChild : files) {
                    filePathList.addAll(scanSourcesFiles(fileChild));
                }
            }
        }
        return filePathList;
    }


    private static Set<String> scanJarFiles(URL url, String packageName) {
        Set<String> filePathList = new HashSet<String>();
        String packageDirName = packageName.replace(".", File.separator);
        try {
            JarFile jar = ((JarURLConnection) url.openConnection()).getJarFile();// 获取jar
            Enumeration<JarEntry> entries = jar.entries(); // 从此jar包 得到一个枚举类
            while (entries.hasMoreElements()) {
                JarEntry entry = entries.nextElement(); // 获取jar里的一个实体 可以是目录 和一些jar包里的其他文件 如META-INF等文件
                String filePath = entry.getName();
                if (filePath.startsWith(packageDirName)) { // 如果前半部分和定义的包名相同
                    if (filePath.endsWith(CLASS) && !entry.isDirectory()) {
                        filePathList.add(filePath);
                    }
                }
            }
        } catch (IOException e) {
            LogDborm.error("扫描包名" + packageName + "时出错！", e);
            e.printStackTrace();
        }
        return filePathList;
    }


    private static Set<String> scanClassFileInPackages(String packageName) {
        Set<String> filePathList = new HashSet<String>();
        if (StringUtilsDborm.isNotBlank(packageName)) {
            String packageDirName = packageName.replace(".", File.separator);
            Set<String> allFilePathList = new HashSet<String>();
            try {
                Enumeration<URL> dirs = Thread.currentThread().getContextClassLoader().getResources(packageDirName);
                while (dirs.hasMoreElements()) {
                    URL url = dirs.nextElement();
                    if ("file".equals(url.getProtocol())) {
                        File file = new File(url.getFile());
                        allFilePathList.addAll(scanSourcesFiles(file));
                    } else if ("jar".equals(url.getProtocol())) {
                        allFilePathList.addAll(scanJarFiles(url, packageName));
                    }
                }
            } catch (Exception e) {
                LogDborm.error("扫描包名" + packageName + "时出错！", e);
                e.printStackTrace();
            }
            filePathList.addAll(allFilePathList);
        }
        return filePathList;
    }

    /**
     * 扫描类目录（支持Jar包中的类目录）
     *
     * @param packageNames
     * @return
     */
    public static Set<Class<?>> scanClassByPackages(List<String> packageNames) {
        Set<Class<?>> results = new HashSet<Class<?>>();
        for (String packageName : packageNames) {
            Set<String> filePathList = scanClassFileInPackages(packageName);
            for (String filePath : filePathList) {
                if (filePath.endsWith(CLASS)) {
                    String classPath = filePath.replace(File.separator, ".");
                    classPath = classPath.substring(classPath.indexOf(packageName), classPath.length() - CLASS.length());
                    try {
                        Class<?> classObj = Class.forName(classPath);
                        results.add(classObj);
                    } catch (Exception e) {
                        LogDborm.error("扫描包名" + packageName + "时出错！", e);
                        e.printStackTrace();
                    }
                }
            }
        }
        return results;
    }


    public static void main(String[] args) {
        List<String> packageNames = new ArrayList<String>();
//        packageNames.add("com.keqiaokeji.dborm.domain");
        packageNames.add("com.mchange.v1.db");
        scanClassByPackages(packageNames);

//        getClasses("com.keqiaokeji.dborm.domain");
//        getClasses("com.mchange.v1.db.sql");


    }


}
