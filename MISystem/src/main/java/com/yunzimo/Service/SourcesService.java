package com.yunzimo.Service;

import com.yunzimo.Bean.Sources;

import java.util.List;

public interface SourcesService {
    public Sources showTreeInfo();
    public List<Sources> showAllParentSource();
    public Boolean addSource(Sources sources);
    public Boolean deleteInfo(int id);
    public Sources getOne(int id);
    public Boolean updateSource(Sources sources);
}
