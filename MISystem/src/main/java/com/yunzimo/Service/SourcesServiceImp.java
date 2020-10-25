package com.yunzimo.Service;

import com.yunzimo.Bean.Sources;
import com.yunzimo.mapper.SourcesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SourcesServiceImp implements SourcesService{

    @Autowired
    private SourcesMapper sourcesMapper;

    @Override
    public Sources showTreeInfo() {
        List<Sources> sources = sourcesMapper.getSources(0);
        //System.out.println(sources);
        Sources source = sources.get(0);
        System.out.println(source);
        source.setOpen(true);
        return getChild(source);
    }

    @Override
    public List<Sources> showAllParentSource() {
        List<Sources> allParents = sourcesMapper.getAllParents();
        System.out.println(allParents);
        return allParents;
    }

    @Override
    public Boolean addSource(Sources sources) {
        if(sources.getUrl().equals("")){
            sources.setUrl(null);
        }
        int i = sourcesMapper.addSource(sources);
        return i>0;
    }

    @Override
    public Boolean deleteInfo(int id) {
        int i = sourcesMapper.deleteInfo(id);
        return i>0;
    }

    @Override
    public Sources getOne(int id) {
        Sources oneInfo = sourcesMapper.getOne(id);
        oneInfo.setParent(sourcesMapper.getOne(oneInfo.getPid()));
        System.out.println(oneInfo);
        return oneInfo;
    }

    @Override
    public Boolean updateSource(Sources sources) {
        if(sources.getUrl().equals("")){
            sources.setUrl(null);
        }
        int i = sourcesMapper.updateSource(sources);
        return i>0;
    }


    public Sources getChild(Sources sources){
        List<Sources> sourcesChild = sourcesMapper.getSources(sources.getId());
        if(sourcesChild.size()>0){
            sources.setChildren(sourcesChild);

            for(Sources sources1:sourcesChild){
                getChild(sources1);
            }
        }
        return sources;
    }
}
