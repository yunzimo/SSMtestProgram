package com.yunzimo.mapper;


import com.yunzimo.Bean.Sources;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SourcesMapper {
    public List<Sources> getSources(@Param("pid") int pid);
    public List<Sources> getAllParents();
    public int addSource(Sources sources);
    public int deleteInfo(int id);
    public Sources getOne(int id);
    public int updateSource(Sources sources);

}