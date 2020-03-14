package com.xawl.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javassist.expr.NewArray;

/**
 * 
 * <p>Title:JsonMsg
 * <p>Description:Json工具类<p>
 * @author Twenty-seven
 * @date 2020年1月11日 下午10:36:08
 */
public class JsonMsg {

    private int code;
    private String msg;
    private int count;
    private Map<String, Object> extendInfo = new HashMap<>();

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCount() {
        return code;
    }

    public void setCount(int count){
        this.count = count;
    }
    
    
    public Map<String, Object> getExtendInfo() {
        return extendInfo;
    }

    public void setExtendInfo(Map<String, Object> extendInfo) {
        this.extendInfo = extendInfo;
    }

    public static JsonMsg success(){
        JsonMsg res = new JsonMsg();
        res.setCode(100);
        res.setMsg("成功！");
        return res;
    }

    public static JsonMsg fail(){
        JsonMsg res = new JsonMsg();
        res.setCode(200);
        res.setMsg("失败！");
        return res;
    }
    
    
    public JsonMsg addInfo(String key, Object obj){
        this.extendInfo.put(key, obj);
        return this;
    }
}
