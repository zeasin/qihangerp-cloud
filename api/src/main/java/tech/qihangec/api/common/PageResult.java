package tech.qihangec.api.common;

import com.baomidou.mybatisplus.core.metadata.IPage;

import java.io.Serializable;
import java.util.List;


public class PageResult<T> implements Serializable {
    private long total;
    private List<T> records;
    private int code;
    private String msg;

    public static <T> PageResult<T> build(IPage<T> page){
        PageResult<T> result = new PageResult<>();
        result.setCode(0);
        result.setMsg("查询成功");
        result.setRecords(page.getRecords());
        result.setTotal(page.getTotal());
        return result;
    }

    public static <T> PageResult<T> build(List<T> list){
        PageResult<T> result = new PageResult<>();
        result.setCode(0);
        result.setMsg("查询成功");
        result.setRecords(list);
        result.setTotal(list.size());
        return result;
    }

    public static <T> PageResult<T> build(){
        PageResult<T> result = new PageResult<>();
        result.setCode(0);
        result.setMsg("查询成功");
        return result;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<T> getRecords() {
        return records;
    }

    public void setRecords(List<T> records) {
        this.records = records;
    }

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
}
