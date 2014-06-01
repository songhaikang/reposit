package com.shk.baseframe.demo.demo.controller;


import com.shk.baseframe.common.dbmapper.uc.domain.UcUserInfo;
import com.shk.baseframe.demo.uc.domain.UserInfo;
import com.shk.baseframe.demo.uc.service.UserService;
import com.shk.baseframe.demo.utils.JsonResult;
import com.shk.baseframe.demo.utils.Uploader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;


//声明为控制器（使用Controller将该类标记为spring mvc解析的类，类似Struts中的Action）
@Controller
@RequestMapping("/demo")
public class DemoController {

    @Autowired
    UserService userService;

    @Autowired
    private Uploader uploader;

    @RequestMapping(value = "/show")//处理请求，多处理配置如：@RequestMapping({"/","/show"})处理“/”或“/show”路径的请求
    public ModelAndView show(HttpServletRequest request, HttpServletResponse response, UserInfo userInfo) {
        String username = userInfo.getUsername();
        //登录成功之后跳转到：/view/web/demo_show_msg.jsp
        ModelAndView mv = new ModelAndView("/demo/demo_show_msg.jsp", "showMsg", "LOGIN SUCCESS, " + username);
        return mv;
    }


    @RequestMapping(value = "/addUser")
    public ModelAndView addUser(UserInfo userInfo) {
        String msg = "新增[" + userInfo.getUsername() + "]成功！";
        try {
            userService.add(userInfo);
        } catch (Exception e) {
            e.printStackTrace();
            msg = "新增[" + userInfo.getUsername() + "]失败！";
        }
        String username = userInfo.getUsername();
        //登录成功之后跳转到：/view/web/demo_show_msg.jsp
        ModelAndView mv = new ModelAndView("/demo/demo_show_msg.jsp", "showMsg", msg);
        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "/getUserById")
    public UcUserInfo getUserById(String userId) {
        return userService.getUserInfo(userId);
    }

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


    @ResponseBody
    @RequestMapping(value = "/jqgridDemo")
    public PageJQGrid jqgridDemo() {
        PageJQGrid page = new PageJQGrid();
        for (int i = 0; i < 35; i++) {
            ProjectInfo projectInfo = new ProjectInfo();
            projectInfo.setProjectId("ID:" + i);
            projectInfo.setProjectName("项目" + i);
            projectInfo.setProjectCode("code");
            projectInfo.setUseAble(true);
            projectInfo.setNote("你你你呵呵呵");
            page.getDataRows().add(projectInfo);
        }
        return page;
    }


}