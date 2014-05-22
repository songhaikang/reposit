package com.shk.baseframe.tools.config;

/**
 * 根据配置自动生成框架工具
 */
public class Config {

    /**
     * 根据配置自动生成框架工具
     * @param args
     */
	public static void main(String[] args) {
		ConfigFileUtils.initFilesMap(ConfigContext.PATH_ROOT);
		ConfigFileUtils.cleanFile();
		ConfigFileUtils.cleanFolder();
		ConfigFileUtils.replaceContent();
		ConfigFileUtils.renameFile();
		ConfigFileUtils.renameForder(ConfigContext.PATH_ROOT);
		
	}
	
	
}
