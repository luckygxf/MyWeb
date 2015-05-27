package com.gxf.util;

import java.io.File;
import java.io.FilenameFilter;

/**
 * Í¼Æ¬¹ýÂËÆ÷£¬Ö§³Öjpg,jgeg
 * @author Administrator
 *
 */
public class PhotoNameFilter implements FilenameFilter {

	/* (non-Javadoc)
	 * @see java.io.FilenameFilter#accept(java.io.File, java.lang.String)
	 */
	@Override
	public boolean accept(File dir, String name) {
		if(name.endsWith(".jpg") || name.endsWith("jpeg"))
			return true;
		return false;
	}

}
