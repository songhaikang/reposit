package com.shk.baseframe.web.uc.controller;


import com.shk.baseframe.web.utils.JsonResult;
import com.shk.baseframe.web.utils.Uploader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

/**
 * @author: Ivan Vigoss
 * Date: 14-2-20
 * Time: PM2:46
 */
@Controller
@RequestMapping("/uploader")
public class UploaderController {

    @Autowired
    private Uploader uploader;

    @ResponseBody
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public JsonResult upload(@RequestParam(value = "file", required = false) MultipartFile file) {
        JsonResult result = new JsonResult();
        try {
            String fileName = file.getOriginalFilename();
            File targetFile = new File(uploader.getSavePath(), fileName);
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }

            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
            result.setSuccess(false);
            result.setMsg(e.getMessage());
        }
        return result;
    }
}
